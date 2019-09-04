#include "astar_path_planner/occupancy_grid.h"
// #include <iostream>
// #include <ros/ros.h>
// #include "astar_path_planner/PlanPath.h"
// #include <nav_msgs/GetMap.h>
// #include "astar_path_planner/marker.h"
namespace astar_path_planner
{
OccupancyGrid::OccupancyGrid(const nav_msgs::OccupancyGrid& map, const double inflation_radius)
{
  // Copy the occupancy grid message
  map_ = map;

  // Access occupancy grid message data with an image
  map_image_ = cv::Mat(map.info.height, map.info.width, CV_8U, &map_.data.front());

  // Dilate the image
  int element_diameter =
      2 * static_cast<int>(std::round(inflation_radius / map.info.resolution)) + 1;  // element_diameter is always odd

  int offset = (element_diameter - 1) / 2;  // Centre of the element

  cv::Mat element =
      cv::getStructuringElement(cv::MORPH_RECT, cv::Size(element_diameter, element_diameter), cv::Size(offset, offset));

  cv::dilate(map_image_, map_image_, element);

  // Map geometry for particle filter
  map_x_min_ = map_.info.origin.position.x;
  map_x_max_ = map_.info.width * map_.info.resolution + map_.info.origin.position.x;

  map_y_min_ = map_.info.origin.position.y;
  map_y_max_ = map_.info.height * map_.info.resolution + map_.info.origin.position.y;
}

bool OccupancyGrid::isOutOfBounds(GridPosition grid_position)
{
  return grid_position.x < 0 || grid_position.x > map_image_.cols ||  //
         grid_position.y < 0 || grid_position.y > map_image_.rows;
}

bool OccupancyGrid::isOutOfBounds(WorldPosition world_position)
{
  return world_position.x < map_x_min_ || world_position.x > map_x_max_ ||  //
         world_position.y < map_y_min_ || world_position.y > map_y_max_;
}

bool OccupancyGrid::isOccupied(int id)
{
  return map_.data[id] != 0;
}

bool OccupancyGrid::isOccupied(GridPosition grid_position)
{
  return isOccupied(getCellId(grid_position));
}

bool OccupancyGrid::isOccupied(WorldPosition world_position)
{
  return isOccupied(getGridPosition(world_position));
}

GridPosition OccupancyGrid::getGridPosition(int id)
{
  return { id % static_cast<int>(map_.info.width), id / static_cast<int>(map_.info.width) };
}

GridPosition OccupancyGrid::getGridPosition(WorldPosition world_position)
{
  GridPosition grid_position{};

  grid_position.x =
      static_cast<int>(std::floor((world_position.x - map_.info.origin.position.x) / map_.info.resolution));

  grid_position.y =
      static_cast<int>(std::floor((world_position.y - map_.info.origin.position.y) / map_.info.resolution));

  return grid_position;
}

WorldPosition OccupancyGrid::getWorldPosition(GridPosition grid_position)
{
  WorldPosition world_position{};

  world_position.x = static_cast<double>(grid_position.x) * map_.info.resolution + map_.info.origin.position.x +
                     (map_.info.resolution / 2.);
  world_position.y = static_cast<double>(grid_position.y) * map_.info.resolution + map_.info.origin.position.y +
                     (map_.info.resolution / 2.);

  return world_position;
}

WorldPosition OccupancyGrid::getWorldPosition(int id)
{
  return getWorldPosition(getGridPosition(id));
}

int OccupancyGrid::getCellId(GridPosition grid_position)
{
  return grid_position.y * static_cast<int>(map_.info.width) + grid_position.x;
}

Cell OccupancyGrid::getCell(int id)
{
  Cell cell{};

  cell.id = id;
  cell.occupied = isOccupied(id);
  cell.grid_position = getGridPosition(id);
  cell.world_position = getWorldPosition(cell.grid_position);

  return cell;
}

Cell OccupancyGrid::getCell(GridPosition grid_position)
{
  return getCell(getCellId(grid_position));
}

Cell OccupancyGrid::getCell(WorldPosition world_position)
{
  return getCell(getGridPosition(world_position));
}

nav_msgs::OccupancyGrid OccupancyGrid::getOccupancyGridMsg()
{
  return map_;
}

std::vector<AdjacentCell> OccupancyGrid::getAdjacentCells(int id, bool diagonal_movement)
{
  // Return the unoccupied cells adjacent to "id"

  // Grid position of the given cell, use this to get adjacent cell grid positions
  GridPosition grid_position = getGridPosition(id);

  // Fill this with adjacent cells
  std::vector<AdjacentCell> adjacent_cells;

  // Use "isOutOfBounds" and "isOccupied" to check if the adjacent cells are out of bounds or occupied
  // The "AdjacentCell" structure has three fields: "id", "cost", and "world_position"
  // Use "getCellId" and "getWorldPosition" to get a cell ID and world position from a grid position
  // "cost" is the cost of moving from the parent to the adjacent cell in metres
  // "map_.info.resolution" is the distance between cells
  // Only return diagonal cells if "diagonal_movement" is true
  // Keep in mind that the distance between diagonal cells is larger than horizontal/vertical cells

  // YOUR CODE HERE
  // waitForKey();
  
  // clear all elements .clear()
  adjacent_cells.clear();
  // reverve space for 4 elements in the vector (just do 8?)
  adjacent_cells.reserve(8);

  

  int complete = 0;
  int pos_num = 0; // adjacent cells 0-7 clockwise around
    // setup to do up, right, down, left first then check diagonal variable
  double cost = map_.info.resolution; // for first 4 checks
  
  while (!complete)
  {
    //copy grid position to another variable
    GridPosition pos = grid_position;
    int valid = false;

    switch (pos_num)
    {
      case 0: //upper
        pos.y++;
        pos_num = 2;
        break;
      
      case 1: // upper right
        pos.x++;
        pos.y++;
        pos_num = 3;
        break;

      case 2: // right
        pos.x++;
        pos_num = 4;
        break;
      
      case 3: // lower right
        pos.x++;
        pos.y--;
        pos_num = 5;
        break;
      
      case 4: // lower
        pos.y--;
        pos_num = 6;
        break;
      
      case 5: // lower left
        pos.x--;
        pos.y--;
        pos_num = 7;
        break;
      
      case 6: // left
        pos.x--;
        if (diagonal_movement)  // go through diagonal cel postion cases too
        {
          pos_num = 1;
          cost *= sqrt(2);  // scale for diagonal distance
        }
        else
          complete = true;
        break;
      
      case 7: // upper left
        pos.x--;
        pos.y++;
        complete = true;
        break;
      
      default:
        valid = false;
        pos.x = 0;
        pos.y = 0;
        break;
    }
    
    valid =  !( isOccupied(pos) || isOutOfBounds(pos) );
    if (valid)
    {
      AdjacentCell cell =   // build cell struct
      {
        getCellId(pos),
        cost,
        getWorldPosition(pos)
      };

      adjacent_cells.push_back(cell); // adding cell to vector

    }
  }

  // if good, store info in an AdjacentCell variable
    // use getCellID() and getWorldPosition()
    // cost from map_.info.resolution variable
      // scale by sqrt(2) for diagonal movement

  // Add to vector

  return adjacent_cells;
}

}  // namespace astar_path_planner