## *********************************************************
## 
## File autogenerated for the multisense_ros package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

##**********************************************************
## Software License Agreement (BSD License)
##
##  Copyright (c) 2008, Willow Garage, Inc.
##  All rights reserved.
##
##  Redistribution and use in source and binary forms, with or without
##  modification, are permitted provided that the following conditions
##  are met:
##
##   * Redistributions of source code must retain the above copyright
##     notice, this list of conditions and the following disclaimer.
##   * Redistributions in binary form must reproduce the above
##     copyright notice, this list of conditions and the following
##     disclaimer in the documentation and/or other materials provided
##     with the distribution.
##   * Neither the name of the Willow Garage nor the names of its
##     contributors may be used to endorse or promote products derived
##     from this software without specific prior written permission.
##
##  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
##  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
##  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
##  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
##  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
##  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
##  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
##  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
##  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
##  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
##  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
##  POSSIBILITY OF SUCH DAMAGE.
##**********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 231, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 260, 'description': 'sensor resolution', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'resolution', 'edit_method': "{'enum_description': 'Available resolution settings', 'enum': [{'srcline': 69, 'description': '1024x1024x128', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const char * const', 'value': '1024x1024x128', 'ctype': 'std::string', 'type': 'str', 'name': '1024x1024_128_disparities'}, {'srcline': 70, 'description': '2048x2048x0', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const char * const', 'value': '2048x2048x0', 'ctype': 'std::string', 'type': 'str', 'name': '2048x2048_No_disparities'}]}", 'default': '1024x1024x128', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 260, 'description': 'FPS', 'max': 15.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'fps', 'edit_method': '', 'default': 5.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 260, 'description': 'sensor gain', 'max': 8.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gain', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 260, 'description': 'AutoExposure', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_exposure', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 260, 'description': 'AutoExposureMaxTime', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_exposure_max_time', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 260, 'description': 'AutoExposureDecay', 'max': 20, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_exposure_decay', 'edit_method': '', 'default': 7, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 260, 'description': 'AutoExposureThresh', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_exposure_thresh', 'edit_method': '', 'default': 0.75, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 260, 'description': 'Exposure', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'exposure_time', 'edit_method': '', 'default': 0.025, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 260, 'description': 'AutoWhiteBalance', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_white_balance', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 260, 'description': 'AutoWhiteBalanceDecay', 'max': 20, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_white_balance_decay', 'edit_method': '', 'default': 3, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 260, 'description': 'AutoWhiteBalanceThresh', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_white_balance_thresh', 'edit_method': '', 'default': 0.5, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 260, 'description': 'WhiteBalanceScaleRed', 'max': 4.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'white_balance_red', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.25, 'type': 'double'}, {'srcline': 260, 'description': 'WhiteBalanceScaleBlue', 'max': 4.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'white_balance_blue', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.25, 'type': 'double'}, {'srcline': 260, 'description': 'Lighting', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'lighting', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 260, 'description': 'Flash', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'flash', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 260, 'description': 'DutyCycle', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'led_duty_cycle', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 260, 'description': 'MotorSpeed', 'max': 5.2, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'motor_speed', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 260, 'description': 'NetworkTimeSynchronization', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'network_time_sync', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 260, 'description': 'ImuSamplesPerMessage', 'max': 300, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'imu_samples_per_message', 'edit_method': '', 'default': 30, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 260, 'description': 'AcceleromterEnabled', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accelerometer_enabled', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 260, 'description': 'Accelerometer Rate', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accelerometer_rate', 'edit_method': "{'enum_description': 'Available accelerometer rates', 'enum': [{'srcline': 101, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': '10Hz__1HzCutoff'}, {'srcline': 102, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '25Hz__3HzCutoff'}, {'srcline': 103, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '50Hz__6HzCutoff'}, {'srcline': 104, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '100Hz__11HzCutoff'}, {'srcline': 105, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': '200Hz__22HzCutoff'}, {'srcline': 106, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': '400Hz__44HzCutoff'}, {'srcline': 107, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': '1344Hz__150HzCutoff'}]}", 'default': 3, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 260, 'description': 'Acceleromter Range', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accelerometer_range', 'edit_method': "{'enum_description': 'Available acceleromter ranges', 'enum': [{'srcline': 110, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': '2g__1mg_per_lsb'}, {'srcline': 111, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '4g__2mg_per_lsb'}, {'srcline': 112, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '8g__4mg_per_lsb'}, {'srcline': 113, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '16g__12mg_per_lsb'}]}", 'default': 0, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 260, 'description': 'GyroscopeEnabled', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gyroscope_enabled', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 260, 'description': 'Gyroscope Rate', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gyroscope_rate', 'edit_method': "{'enum_description': 'Available gyroscope rates', 'enum': [{'srcline': 117, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': '100Hz__13HzCutoff'}, {'srcline': 118, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '200Hz__13HzCutoff'}, {'srcline': 119, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '200Hz__25HzCutoff'}, {'srcline': 120, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '400Hz__25HzCutoff'}, {'srcline': 121, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': '400Hz__50HzCutoff'}, {'srcline': 122, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': '800Hz__50HzCutoff'}, {'srcline': 123, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': '800Hz__110HzCutoff'}]}", 'default': 3, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 260, 'description': 'Gyroscope Range', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gyroscope_range', 'edit_method': "{'enum_description': 'Available gyroscope ranges', 'enum': [{'srcline': 126, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': '250dps__9mdps_per_lsb'}, {'srcline': 127, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '500dps__18mdps_per_lsb'}, {'srcline': 128, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '2000dps__70mdps_per_lsb'}]}", 'default': 0, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 260, 'description': 'MagnetometerEnabled', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'magnetometer_enabled', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 260, 'description': 'Magnetometer Rate', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'magnetometer_rate', 'edit_method': "{'enum_description': 'Available magnetometer rates', 'enum': [{'srcline': 132, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': '10Hz'}, {'srcline': 133, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '25Hz'}, {'srcline': 134, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '50Hz'}, {'srcline': 135, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '100Hz'}]}", 'default': 0, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 260, 'description': 'Magnetometer Range', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/groovy/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'magnetometer_range', 'edit_method': "{'enum_description': 'Available magnetometer ranges', 'enum': [{'srcline': 138, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': '1p3gauss__1020ugauss_per_lsb'}, {'srcline': 139, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '1p9gauss__1316ugauss_per_lsb'}, {'srcline': 140, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '2p5gauss__1667ugauss_per_lsb'}, {'srcline': 141, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '4p0gauss__2500ugauss_per_lsb'}, {'srcline': 142, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': '4p7gauss__2817ugauss_per_lsb'}, {'srcline': 143, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': '5p6gauss__3390ugauss_per_lsb'}, {'srcline': 144, 'description': '', 'srcfile': '/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/cfg/multisense.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': '8p1gauss__4878ugauss_per_lsb'}]}", 'default': 0, 'level': 0, 'min': -2147483648, 'type': 'int'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])    
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

sl_bm_cmv4000_imu_1024x1024_128_disparities = '1024x1024x128'
sl_bm_cmv4000_imu_2048x2048_No_disparities = '2048x2048x0'
sl_bm_cmv4000_imu_10Hz__1HzCutoff = 0
sl_bm_cmv4000_imu_25Hz__3HzCutoff = 1
sl_bm_cmv4000_imu_50Hz__6HzCutoff = 2
sl_bm_cmv4000_imu_100Hz__11HzCutoff = 3
sl_bm_cmv4000_imu_200Hz__22HzCutoff = 4
sl_bm_cmv4000_imu_400Hz__44HzCutoff = 5
sl_bm_cmv4000_imu_1344Hz__150HzCutoff = 6
sl_bm_cmv4000_imu_2g__1mg_per_lsb = 0
sl_bm_cmv4000_imu_4g__2mg_per_lsb = 1
sl_bm_cmv4000_imu_8g__4mg_per_lsb = 2
sl_bm_cmv4000_imu_16g__12mg_per_lsb = 3
sl_bm_cmv4000_imu_100Hz__13HzCutoff = 0
sl_bm_cmv4000_imu_200Hz__13HzCutoff = 1
sl_bm_cmv4000_imu_200Hz__25HzCutoff = 2
sl_bm_cmv4000_imu_400Hz__25HzCutoff = 3
sl_bm_cmv4000_imu_400Hz__50HzCutoff = 4
sl_bm_cmv4000_imu_800Hz__50HzCutoff = 5
sl_bm_cmv4000_imu_800Hz__110HzCutoff = 6
sl_bm_cmv4000_imu_250dps__9mdps_per_lsb = 0
sl_bm_cmv4000_imu_500dps__18mdps_per_lsb = 1
sl_bm_cmv4000_imu_2000dps__70mdps_per_lsb = 2
sl_bm_cmv4000_imu_10Hz = 0
sl_bm_cmv4000_imu_25Hz = 1
sl_bm_cmv4000_imu_50Hz = 2
sl_bm_cmv4000_imu_100Hz = 3
sl_bm_cmv4000_imu_1p3gauss__1020ugauss_per_lsb = 0
sl_bm_cmv4000_imu_1p9gauss__1316ugauss_per_lsb = 1
sl_bm_cmv4000_imu_2p5gauss__1667ugauss_per_lsb = 2
sl_bm_cmv4000_imu_4p0gauss__2500ugauss_per_lsb = 3
sl_bm_cmv4000_imu_4p7gauss__2817ugauss_per_lsb = 4
sl_bm_cmv4000_imu_5p6gauss__3390ugauss_per_lsb = 5
sl_bm_cmv4000_imu_8p1gauss__4878ugauss_per_lsb = 6
