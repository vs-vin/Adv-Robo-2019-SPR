# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "astar_path_planner: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(astar_path_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv" NAME_WE)
add_custom_target(_astar_path_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astar_path_planner" "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(astar_path_planner
  "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astar_path_planner
)

### Generating Module File
_generate_module_cpp(astar_path_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astar_path_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(astar_path_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(astar_path_planner_generate_messages astar_path_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv" NAME_WE)
add_dependencies(astar_path_planner_generate_messages_cpp _astar_path_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_path_planner_gencpp)
add_dependencies(astar_path_planner_gencpp astar_path_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_path_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(astar_path_planner
  "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astar_path_planner
)

### Generating Module File
_generate_module_eus(astar_path_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astar_path_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(astar_path_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(astar_path_planner_generate_messages astar_path_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv" NAME_WE)
add_dependencies(astar_path_planner_generate_messages_eus _astar_path_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_path_planner_geneus)
add_dependencies(astar_path_planner_geneus astar_path_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_path_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(astar_path_planner
  "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astar_path_planner
)

### Generating Module File
_generate_module_lisp(astar_path_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astar_path_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(astar_path_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(astar_path_planner_generate_messages astar_path_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv" NAME_WE)
add_dependencies(astar_path_planner_generate_messages_lisp _astar_path_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_path_planner_genlisp)
add_dependencies(astar_path_planner_genlisp astar_path_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_path_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(astar_path_planner
  "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astar_path_planner
)

### Generating Module File
_generate_module_nodejs(astar_path_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astar_path_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(astar_path_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(astar_path_planner_generate_messages astar_path_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv" NAME_WE)
add_dependencies(astar_path_planner_generate_messages_nodejs _astar_path_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_path_planner_gennodejs)
add_dependencies(astar_path_planner_gennodejs astar_path_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_path_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(astar_path_planner
  "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar_path_planner
)

### Generating Module File
_generate_module_py(astar_path_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar_path_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(astar_path_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(astar_path_planner_generate_messages astar_path_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/97117523/Documents/Adv_Robo/Adv-Robo-2019-SPR/catkin_ws/src/astar_path_planner/srv/PlanPath.srv" NAME_WE)
add_dependencies(astar_path_planner_generate_messages_py _astar_path_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astar_path_planner_genpy)
add_dependencies(astar_path_planner_genpy astar_path_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astar_path_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astar_path_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astar_path_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astar_path_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astar_path_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astar_path_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astar_path_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astar_path_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astar_path_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar_path_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar_path_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astar_path_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
