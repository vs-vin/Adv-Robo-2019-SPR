#ifndef ASTAR_PATH_PLANNER_MARKER_H
#define ASTAR_PATH_PLANNER_MARKER_H

#include <ros/ros.h>
#include <visualization_msgs/Marker.h>

#include "astar_path_planner/occupancy_grid.h"

namespace astar_path_planner
{
enum class MarkerColour
{
  RED,
  GREEN,
  BLUE,
  YELLOW,
  FUCHSIA
};

visualization_msgs::Marker createSphereMarker(double position_x, double position_y, MarkerColour colour, double scale);
visualization_msgs::Marker createSphereListMarker(const std::vector<astar_path_planner::WorldPosition>& world_positions,
                                                  MarkerColour colour, double scale);
visualization_msgs::Marker createDeleteMarker();

}  // namespace astar_path_planner

#endif  // ASTAR_PATH_PLANNER_MARKER_H
