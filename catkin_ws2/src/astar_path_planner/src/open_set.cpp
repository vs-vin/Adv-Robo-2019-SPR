#include "astar_path_planner/open_set.h"

#include <ros/ros.h>

namespace astar_path_planner
{
void OpenSet::push(const Node& n)
{
  nodes_.push_back(n);
}

Node OpenSet::pop(double heuristic_cost_weight)
{
  int index = 0;

  // Find the best node in "nodes_"
  // Save the index into "index" and it will be removed from "nodes_" and returned
  // You need to compare combined costs: the cost of the node + (heuristic cost * weight)
  // Use "heuristic_cost_weight" to calculate the combined cost so it can be modified later

  // YOUR CODE HERE

  // store first node 's cost in a variable (store entire node struct?)
    // iterate through the vector (for loop since iterator needed)
    // compare each element's cost with the variable  (.cost + .heuristic_cost * weight)
      // replace variable if lower
      // save for loop index when the lower value was found
  
  // should be donzo


  // YOU DON'T NEED TO MODIFY ANYTHING AFTER THIS LINE

  // Copy the node
  Node n = nodes_[index];

  // Overwrite the node with the node at the end of the vector
  nodes_[index] = nodes_.back();

  // Delete the node at the end of the vector
  nodes_.pop_back();

  // Return the copy
  return n;
}

bool OpenSet::contains(int id)
{
  // Returns true if the node is in nodes_
  for (const auto& n : nodes_)
  {
    if (n.id == id)
    {
      return true;
    }
  }

  return false;
}

void OpenSet::update(const Node& n)
{
  // Find node "n" in "nodes_"
  // If the cost of node "n" is less than the cost of the node already in the open set, replace it

  // YOUR CODE HERE
  // traverse node_ vector
  // check if .id same for n and node_[i]
    // check if the cost is less
      // if yes, replace node_[i] with n
  
  // do with range based for loop?
    // break when n found? (no, cannot track iterator, unless... increment a variable)
    // more straight forward to do normal for-loop
  

}

bool OpenSet::empty()
{
  return nodes_.empty();
}

const std::vector<Node>& OpenSet::getNodes()
{
  return nodes_;
}

std::ostream& operator<<(std::ostream& os, const OpenSet& open_set)
{
  os << "\n\nOpen set:" << std::endl;

  for (const auto& n : open_set.nodes_)
  {
    os << n;
  }

  return os;
}

}  // namespace astar_path_planner