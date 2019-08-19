# Install script for directory: /home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astar_path_planner/srv" TYPE FILE FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astar_path_planner/cmake" TYPE FILE FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/build/astar_path_planner/catkin_generated/installspace/astar_path_planner-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/devel/include/astar_path_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/devel/share/roseus/ros/astar_path_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/devel/share/common-lisp/ros/astar_path_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/devel/share/gennodejs/ros/astar_path_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/devel/lib/python2.7/dist-packages/astar_path_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/devel/lib/python2.7/dist-packages/astar_path_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/build/astar_path_planner/catkin_generated/installspace/astar_path_planner.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astar_path_planner/cmake" TYPE FILE FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/build/astar_path_planner/catkin_generated/installspace/astar_path_planner-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astar_path_planner/cmake" TYPE FILE FILES
    "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/build/astar_path_planner/catkin_generated/installspace/astar_path_plannerConfig.cmake"
    "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/build/astar_path_planner/catkin_generated/installspace/astar_path_plannerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astar_path_planner" TYPE FILE FILES "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/package.xml")
endif()

