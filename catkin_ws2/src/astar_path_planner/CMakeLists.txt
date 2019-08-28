cmake_minimum_required(VERSION 3.1.3)

project(astar_path_planner)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCV 3 REQUIRED)

find_package(catkin REQUIRED COMPONENTS
        roscpp
        nav_msgs
        geometry_msgs
        visualization_msgs
        message_generation
        )

add_service_files(FILES
        PlanPath.srv
        )

generate_messages()

catkin_package()

add_executable(astar_path_planner
        src/astar_path_planner.cpp
        src/occupancy_grid.cpp
        src/node.cpp
        src/open_set.cpp
        src/closed_set.cpp
        src/marker.cpp
        )

add_dependencies(astar_path_planner ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_include_directories(astar_path_planner SYSTEM PRIVATE ${OpenCV_INCLUDE_DIRS} ${catkin_INCLUDE_DIRS})
target_include_directories(astar_path_planner PRIVATE include)

target_link_libraries(astar_path_planner ${OpenCV_LIBS} ${catkin_LIBRARIES})
