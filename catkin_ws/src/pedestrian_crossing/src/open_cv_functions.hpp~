//============================================================================
// Name        : functions.h
// Author      : Alessandro Firgerio and Simone Fontanesi
//============================================================================

#ifndef FUNCTIONS_H_
#define FUNCTIONS_H_

// PCL specific includes
#include <pcl/ros/conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
//OpenCV includes
#include <opencv/cv.h>
#include <opencv/highgui.h>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>
#include <fstream>
#include <math.h>
#include <stdlib.h>
#include <vector>

using namespace cv;
using namespace std;

//define for drawing directions
#define CIRCLE_RADIUS 5
//define for center algorithm                 // Distances with pointcloud data in meters
#define MAX_CENTERS_DISTANCE 2
#define MIN_CENTERS_DISTANCE 0.4
//define rectangle areas param				 // Areas are calculated with pointcloud data in squared meters
#define MAX_RECTANGLE_AREA 3.2
#define MIN_RECTANGLE_AREA 1.1
//define for colors
#define BLUE Scalar (255, 0, 0)
#define GREEN Scalar (0, 255, 0)
#define RED Scalar (0, 0, 255)
//define for finding rectangles
#define MAX_COSINE_VALUE 0.9

//this class is used to improve the efficiency of the algorithm which creates the group of close centers
class MyPoint {
	public:
	Point pixel_coordinates;
	double x;
	double y;
	double z;
	bool added;
	bool found;
};


void Lines_detection( Mat &result, Mat &original, pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud);
// Draw a fixed-size filled circle
void MyFilledCircle( Mat &img, MyPoint center, Scalar color );
// Draw a simple line
void MyLine( Mat &img, MyPoint start, MyPoint end, Scalar color);

void findSquares( Mat& image, vector<vector<Point> >& squares, vector<MyPoint>& centers, pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud);
void drawSquares( Mat& image, vector<vector<Point> >& squares );
vector<MyPoint> centers_cleaner( Mat &image, vector<MyPoint> centers);
vector<MyPoint> centers_groupper( Mat &image, vector<MyPoint> centers);
void recursive(int current, vector<MyPoint> centers, vector<MyPoint> &temporary_vector);
double coordinate_averager(vector<MyPoint> coordinate_vector, char coordinate_type);
double m_calculator(vector<MyPoint> coordinate_vector);
void draw_interpolation_line(Mat &image, vector<MyPoint> coordinate_vector);


#endif /* FUNCTIONS_H_ */
