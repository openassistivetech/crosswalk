#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
// PCL specific includes
#include <pcl/ros/conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <time.h>

////visualize point_cloud
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/io/io.h>
#include <pcl/io/pcd_io.h>

#include <opencv/cv.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <multisense_ros/imu.h>
#include <multisense_ros/RawImuData.h>

#define SENSOR_HEIGHT 1.0        //TODO In a future update, this parameter could be calculated from multisense IMU data

void cloud_cb (const sensor_msgs::PointCloud2& input);
void accelerometer_cb (const multisense_ros::RawImuData& accel);
