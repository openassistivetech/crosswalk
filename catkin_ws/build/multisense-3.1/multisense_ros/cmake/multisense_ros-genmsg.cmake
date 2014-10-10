# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "multisense_ros: 8 messages, 0 services")

set(MSG_I_FLAGS "-Imultisense_ros:/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg;-Isensor_msgs:/opt/ros/groovy/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/groovy/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/groovy/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(multisense_ros_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/Histogram.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
)
_generate_msg_cpp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamCal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
)
_generate_msg_cpp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawImuData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
)
_generate_msg_cpp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
)
_generate_msg_cpp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawLidarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
)
_generate_msg_cpp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawLidarCal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
)
_generate_msg_cpp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
)
_generate_msg_cpp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/DeviceInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(multisense_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(multisense_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(multisense_ros_generate_messages multisense_ros_generate_messages_cpp)

# target for backward compatibility
add_custom_target(multisense_ros_gencpp)
add_dependencies(multisense_ros_gencpp multisense_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multisense_ros_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/Histogram.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
)
_generate_msg_lisp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamCal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
)
_generate_msg_lisp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawImuData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
)
_generate_msg_lisp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
)
_generate_msg_lisp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawLidarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
)
_generate_msg_lisp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawLidarCal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
)
_generate_msg_lisp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
)
_generate_msg_lisp(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/DeviceInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(multisense_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(multisense_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(multisense_ros_generate_messages multisense_ros_generate_messages_lisp)

# target for backward compatibility
add_custom_target(multisense_ros_genlisp)
add_dependencies(multisense_ros_genlisp multisense_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multisense_ros_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/Histogram.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
)
_generate_msg_py(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamCal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
)
_generate_msg_py(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawImuData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
)
_generate_msg_py(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
)
_generate_msg_py(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawLidarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
)
_generate_msg_py(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawLidarCal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
)
_generate_msg_py(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawCamConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
)
_generate_msg_py(multisense_ros
  "/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/DeviceInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
)

### Generating Services

### Generating Module File
_generate_module_py(multisense_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(multisense_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(multisense_ros_generate_messages multisense_ros_generate_messages_py)

# target for backward compatibility
add_custom_target(multisense_ros_genpy)
add_dependencies(multisense_ros_genpy multisense_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multisense_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multisense_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(multisense_ros_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multisense_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(multisense_ros_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multisense_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(multisense_ros_generate_messages_py sensor_msgs_generate_messages_py)
