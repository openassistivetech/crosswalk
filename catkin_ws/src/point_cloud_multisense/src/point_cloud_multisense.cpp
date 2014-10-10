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

////visualize point_cloud
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/io/io.h>
#include <pcl/io/pcd_io.h>

#include <opencv/cv.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#define MAX_Y 1.5
#define MIN_Y 0.9

using namespace std;
int repetitions;

pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");
//create a log file
//ofstream myfile;

void cloud_cb (const sensor_msgs::PointCloud2& input)
{
	/*
	std::cout << "width is " <<input.width << std::endl;
	std::cout << "height is " << input.height << std::endl;
	*/

	//Declaration and instantiation of a cloud pointer to be used for output
	pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_pcl(new pcl::PointCloud<pcl::PointXYZRGB>);

	//Input of the above cloud and the corresponding output of cloud_pcl
	pcl::fromROSMsg(input, *cloud_pcl); //it will be used for the plane detection algorithm

	int cloudsize = (cloud_pcl->width) * (cloud_pcl->height);

	int i = 0;
	uint32_t RGB;
	//int good = 0, not_good = 0, not_good_Y1 = 0, not_good_Y2 = 0;

	//rgb fields not found from "fromROSMsg" function, we put them inside manually
    if (cloudsize) { //the pointcloud is not empty
        for (int h=0; h<input.height; ++h) {
            for (int w=0; w<input.width; ++w, ++i) {

					RGB = input.data[i * 16 + 12]; 			//offset 12 == RGB
					cloud_pcl->points[i].rgb = RGB;
            }
        }
    }
	
	viewer.showCloud (boost::shared_ptr<const pcl::PointCloud<pcl::PointXYZRGB> >(cloud_pcl));

	///////////////////// reprojection of pcl::pointcloud ///////////////////////////////////
	uint8_t r;
	uint8_t g;
	uint8_t b;
	cv::Mat result; 
	i = 0;

    result = cv::Mat(cloud_pcl->height, cloud_pcl->width, CV_8UC3);
	
    if (cloudsize) { //the pointcloud is not empty
        for (int h=0; h<result.rows; ++h) {
            for (int w=0; w<result.cols; ++w, ++i) {
				
				RGB = uint32_t(cloud_pcl->points[i].rgb);

				//out of interest points:
				if(((input.data[i * 16 ] == 0) && (input.data[i * 16 + 4] == 0) && (input.data[i * 16 + 8] == 0))){ //filter points out cloud
					result.at<cv::Vec3b>(h,w)[0] = 0;
                	result.at<cv::Vec3b>(h,w)[1] = 0;
                	result.at<cv::Vec3b>(h,w)[2] = 0;
					//not_good++;
				}
				else if((cloud_pcl->points[i].y > 1.5)){ //filter on Y
					result.at<cv::Vec3b>(h,w)[0] = 0;
                	result.at<cv::Vec3b>(h,w)[1] = 0; //255
                	result.at<cv::Vec3b>(h,w)[2] = 0;
					//not_good_Y1++;
				}
				else if((cloud_pcl->points[i].y < 0.9)){ //filter on Y
					result.at<cv::Vec3b>(h,w)[0] = 0; //255
                	result.at<cv::Vec3b>(h,w)[1] = 0;
                	result.at<cv::Vec3b>(h,w)[2] = 0; //255
					//not_good_Y2++;
				}

				//good points:
				else{
					r = ( RGB >> 16) & 0x0000ff;
					g = ( RGB >> 8) & 0x0000ff;
					b = ( RGB ) & 0x0000ff;

               	 	result.at<cv::Vec3b>(h,w)[0] = b;
                	result.at<cv::Vec3b>(h,w)[1] = g;
                	result.at<cv::Vec3b>(h,w)[2] = r;
					//good++;
				}
            }
        }
    }

		//std::cout << "GOOD : " << good << " NOT GOOD : " << not_good << " NOT GOOD Y1 : " << not_good_Y1 << " NOT GOOD Y2 : " << not_good_Y2 << std::endl;
		cvtColor(result, result, CV_RGB2GRAY);
		cv::imshow("img",result);
		cv::waitKey(3);	

//////////////////// Uncomment this to write on the file X,Y,Z coordinates of input pointcloud2 /////////////////////////////////////

/*	if(repetitions <= 0){
  		i = 0;
  		for (int32_t u = 0; u < input.height; ++u) {
  	 		for (int32_t v = 0; v < input.width; ++v, ++i) {
				if(double(input.data[i * 16 + 0]) != 0)
        			myfile << "X : " << double(input.data[i * 16 + 0]) << std::endl;
				if(double(input.data[i * 16 + 4]) != 0)
        			myfile << "Y : " << double(input.data[i * 16 + 4]) << std::endl;
				if(double(input.data[i * 16 + 8]) != 0)
        			myfile << "Z : " << double(input.data[i * 16 + 8]) << std::endl;
     		 } 
  		 }
		repetitions++;
	}
*/


//////////////////// Uncomment this to write on the file Y coordinates of input pointcloud2 /////////////////////////////////////
/*if(repetitions <= 0){
  		i = 0;
  		for (int32_t u = 0; u < cloud_pcl->height; ++u) {
  	 		for (int32_t v = 0; v < cloud_pcl->width; ++v, ++i) {
				
				if(double(input.data[i * 16 + 4]) != 0)
        			myfile << "Y : " << double(cloud_pcl->points[i].y) << std::endl;
			
     		 } 
  		 }
		repetitions++;
	}
*/

//////////////////// Uncomment this to write on the RGB value of input pointcloud2 /////////////////////////////////////

/* 	if(for_time <= 0){
		for (int32_t u = 0; u < input.height / 10; ++u) {
   			for (int32_t v = 0; v < input.width /100; ++v, ++i) {
       			if(double(input.data[i * 16 + 12]) != 0)
          			myfile << "RGB_DOUBLE: " << double(input.data[i * 16 + 12]) << " RGB_UINT32: " << uint32_t(input.data[i * 16 + 12]) << "        ";
    		}
  		}
	}
}*/

	//for_time++;
	
///////////////////// uncomment this to do the reprojection of pointcloud2 input ///////////////////////////////////
/*	uint32_t RGB;
	uint8_t r;
	uint8_t g;
	uint8_t b;
	cv::Mat result; 

    result = cv::Mat(input.height, input.width, CV_8UC3);

    if (input.height * input.width) { //the pointcloud is not empty

        for (int h=0; h<result.rows; ++h) {
            for (int w=0; w<result.cols; ++w, ++i) {
				
				RGB = input.data[i * 16 + 12];
				r = ( RGB >> 16) & 0x0000ff;
				g = ( RGB >> 8) & 0x0000ff;
				b = ( RGB ) & 0x0000ff;

                result.at<cv::Vec3b>(h,w)[0] = b;
                result.at<cv::Vec3b>(h,w)[1] = g;
                result.at<cv::Vec3b>(h,w)[2] = r;
            }
        }
    }

	cvtColor(result, result, CV_RGB2GRAY);
	cv::imshow("img",result);
	cv::waitKey(3);
*/
	
}

int main (int argc, char** argv)
{
	
  repetitions = 0;
  //myfile.open ("POINTCLOUD.txt");
  // Initialize ROS
  ros::init (argc, argv, "point_cloud_multisense");
  ros::NodeHandle nh;

  // Create a ROS subscriber for the input point cloud
  ros::Subscriber sub = nh.subscribe("multisense/image_points2_color_organized", 1, cloud_cb);

  // Spin
  ros::spin ();

  //myfile.close();
}

