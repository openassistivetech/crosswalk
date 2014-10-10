#include "point_cloud_functions.hpp"

int main (int argc, char** argv)
{
	
  // Initialize ROS
  ros::init (argc, argv, "point_cloud_multisense");
  ros::NodeHandle nh;

  // Create a ROS subscriber for the input point cloud
  ros::Subscriber sub_cloud = nh.subscribe("multisense/image_points2_color_organized", 1, cloud_cb);
  //ros::Subscriber sub_accel = nh.subscribe("/multisense/imu/accelerometer", 1, accelerometer_cb);

  // Spin
  ros::spin ();

}

