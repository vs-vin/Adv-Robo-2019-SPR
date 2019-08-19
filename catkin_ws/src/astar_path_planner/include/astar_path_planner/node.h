#ifndef ASTAR_PATH_PLANNER_NODE_H
#define ASTAR_PATH_PLANNER_NODE_H

#include <limits>
#include <ostream>

namespace astar_path_planner
{
struct Node
{
  int id = -1;
  int parent_id = -1;
  double cost = std::numeric_limits<double>::max();  // The default cost is very large
  double heuristic_cost = 0.;

  friend std::ostream& operator<<(std::ostream& os, const Node& node);
};
}  // namespace astar_path_planner
#endif  // ASTAR_PATH_PLANNER_NODE_H
