#ifndef ASTAR_PATH_PLANNER_CLOSED_SET_H
#define ASTAR_PATH_PLANNER_CLOSED_SET_H

#include <vector>

#include "astar_path_planner/node.h"

namespace astar_path_planner
{
class ClosedSet
{
private:
  std::vector<Node> nodes_{};

public:
  size_t size();
  void push(const Node& n);                             // Add a new node
  bool contains(int id);                                // Returns true if the node is in the closed set
  std::vector<int> getPath(int start_id, int goal_id);  // Return a path of IDs from the goal to the start

  const std::vector<Node>& getNodes();

  friend std::ostream& operator<<(std::ostream& os, const ClosedSet& closed_set);
};
}  // namespace astar_path_planner
#endif  // ASTAR_PATH_PLANNER_CLOSED_SET_H
