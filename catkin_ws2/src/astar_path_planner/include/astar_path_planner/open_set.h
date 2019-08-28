#ifndef ASTAR_PATH_PLANNER_OPEN_SET_H
#define ASTAR_PATH_PLANNER_OPEN_SET_H

#include <vector>
#include <ostream>

#include "astar_path_planner/node.h"

namespace astar_path_planner
{
class OpenSet
{
private:
  std::vector<Node> nodes_{};

public:
  void push(const Node& n);                // Add a new node
  Node pop(double heuristic_cost_weight);  // Remove and return the best node
  bool contains(int id);                   // Returns true if the node is in the open set
  void update(const Node& n);              // Update a node that is already in the open set, if the new node is better
  bool empty();                            // Returns true if the open set is empty

  const std::vector<Node>& getNodes();

  friend std::ostream& operator<<(std::ostream& os, const OpenSet& open_set);
};

}  // namespace astar_path_planner

#endif  // ASTAR_PATH_PLANNER_OPEN_SET_H
