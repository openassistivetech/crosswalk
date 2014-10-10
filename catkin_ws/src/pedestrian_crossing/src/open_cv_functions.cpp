//============================================================================
// Name        : functions.cpp
// Author      : Alessandro Firgerio and Simone Fontanesi
//============================================================================

#include "open_cv_functions.hpp"


using namespace cv;
using namespace std;


// Draw a fixed-size filled circle
void MyFilledCircle( Mat &img, MyPoint center, Scalar color )
{
	int thickness = 10;
	int lineType = 8;
	circle( img, center.pixel_coordinates, CIRCLE_RADIUS, color , thickness, lineType );
}

// Draw a simple line
void MyLine( Mat &img, Point start, Point end, Scalar color )
{
	int thickness = 2;
	int lineType = 8;
	line( img, start, end, color, thickness, lineType );
}

//Find center in the cloud if the point is missing
MyPoint findClosePoint(MyPoint point, pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud)       
{
	
	int iteration = 0;
	int center_position_x = point.pixel_coordinates.x;
	int center_position_y = point.pixel_coordinates.y;
	while((iteration < cloud->height/8) && ((center_position_x - iteration) > 0) && ((center_position_x + iteration) < 1024) && ((center_position_y - iteration) > 0) && ((center_position_y + iteration) < 1024)){
		
		//cout << "if iteration < cloudheight" << endl;
		iteration++;
		//the starting point to the top left angle of a square with 2*iteration long edge
	
		//for order: clockwise
		//look in the upper edge             										
		for(int i = (center_position_x - iteration); i <= (center_position_x + iteration); i++){        
			point.x = cloud->points[((center_position_y - iteration)*cloud->width) + i + 1].x; //i-th point is y*number of cols + x + 1
			point.y = cloud->points[((center_position_y - iteration)*cloud->width) + i + 1].y;
			point.z = cloud->points[((center_position_y - iteration)*cloud->width) + i + 1].z;
			
			if(((uint32_t(point.x)) || (uint32_t(point.y)) || (uint32_t(point.z)))){ //if point exist in the cloud
				//cout << "found in top edge, iteration: " << iteration << endl;
				return point;
			}
			else{
				//cout << "NOT found in top edge, iteration: " << iteration << endl;
				}
		}
		//look in the right edge  
		for(int i = center_position_y - iteration; i <= (center_position_y + iteration); i++){      
			point.x = cloud->points[((i)*cloud->width) + center_position_x + iteration + 1].x; //i-th point is y*number of cols + x + 1
			point.y = cloud->points[((i)*cloud->width) + center_position_x + iteration + 1].y;
			point.z = cloud->points[((i)*cloud->width) + center_position_x + iteration + 1].z;
			
			if(((uint32_t(point.x)) || (uint32_t(point.y)) || (uint32_t(point.z)))){ //if point exist in the cloud
				//cout << "found in right edge, iteration: " << iteration << endl;
				return point;
			}
			else{
				//cout << "NOT found in R edge, iteration: " << iteration << endl;
			}
		}
		//look in the bottom edge
		for(int i = (center_position_x - iteration); i <= (center_position_x + iteration); i++){        
			point.x = cloud->points[((center_position_y + iteration)*cloud->width) + i + 1].x; //i-th point is y*number of cols + x + 1
			point.y = cloud->points[((center_position_y + iteration)*cloud->width) + i + 1].y;
			point.z = cloud->points[((center_position_y + iteration)*cloud->width) + i + 1].z;
			
			if(((uint32_t(point.x)) || (uint32_t(point.y)) || (uint32_t(point.z)))){ //if point exist in the cloud
				//cout << "found in bottom edge, iteration: " << iteration << endl;
				return point;
			}
			else{
				//cout << "NOT found in B edge, iteration: " << iteration << endl;
			}
		}
		//look in the left edge
		for(int i = center_position_y - iteration; i <= (center_position_y + iteration); i++){      
			point.x = cloud->points[((i)*cloud->width) + center_position_x - iteration + 1].x; //i-th point is y*number of cols + x + 1
			point.y = cloud->points[((i)*cloud->width) + center_position_x - iteration + 1].y;
			point.z = cloud->points[((i)*cloud->width) + center_position_x - iteration + 1].z;
			
			if(((uint32_t(point.x)) || (uint32_t(point.y)) || (uint32_t(point.z)))){ //if point exist in the cloud
				//cout << "found in left edge, iteration: " << iteration << endl;
				return point;
			}
			else{
				//cout << "NOT found in L edge, iteration: " << iteration << endl;
			}
		}

	}
	
	point.found = false;
	//cout << "found? NO" << endl;
	return point;

}

//from opencv : the original functions have been modified   //tresh 50 , N 11  //TODO
int thresh = 50, N = 20;

// helper function:
// finds a cosine of angle between vectors
// from pt0->pt1 and from pt0->pt2
double angle( Point pt1, Point pt2, Point pt0 )
{
    double dx1 = pt1.x - pt0.x;
    double dy1 = pt1.y - pt0.y;
    double dx2 = pt2.x - pt0.x;
    double dy2 = pt2.y - pt0.y;
    return (dx1*dx2 + dy1*dy2)/sqrt((dx1*dx1 + dy1*dy1)*(dx2*dx2 + dy2*dy2) + 1e-10);
}

// returns sequence of squares detected on the image.
// the sequence is stored in the specified memory storage
void findSquares( Mat& image, vector<vector<Point> >& squares, vector<MyPoint>& centers, pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud)
{ 	

    squares.clear();

    int x_sum_pixel, y_sum_pixel;
    MyPoint center;

    Mat pyr, timg, gray0(image.size(), CV_8U), gray;

    // down-scale and upscale the image to filter out the noise
    pyrDown(image, pyr, Size(image.cols/2, image.rows/2));
    pyrUp(pyr, timg, image.size());
    vector<vector<Point> > contours;

    // find squares in every color plane of the image
    for( int c = 0; c < 3; c++ )
    {
        int ch[] = {c, 0};
        mixChannels(&timg, 1, &gray0, 1, ch, 1);
/*
	
		Mat gray1(image.size(), CV_8U), dst(image.size(), CV_8U);
		
		 /// Canny detector
  Canny( gray0, gray1, 50, 150, 3 );

  
  imshow( "canny1", gray1);
*/
        // try several threshold levels
        for( int l = 0; l < N; l++ )
        {
            // hack: use Canny instead of zero threshold level.
            // Canny helps to catch squares with gradient shading
            if( l == 0 )
            {
                // apply Canny. Take the upper threshold from slider
                // and set the lower to 0 (which forces edges merging)

            	//Canny
            	int lowThreshold = 80;   //80
            	int ratio = 3;
            	int kernel_size = 3;
            	Canny( gray0, gray, lowThreshold, lowThreshold*ratio, kernel_size );
				
                //Canny(gray0, gray, 0, thresh, 5);
                // dilate canny output to remove potential
                // holes between edge segments
                dilate(gray, gray, Mat(), Point(-1,-1));
            }
            else
            {
                // apply threshold if l!=0:
                //     tgray(x,y) = gray(x,y) < (l+1)*255/N ? 255 : 0
                gray = gray0 >= (l+1)*255/N;
            }

			//show canny image
			//imshow("canny",gray);
			//waitKey(3);
            // find contours and store them all as a list

			//imshow("Canny", gray);
			findContours(gray, contours, RETR_LIST, CHAIN_APPROX_SIMPLE);

            vector<Point> approx;
			vector<Point2f> new_approx;
			MyPoint p0, p1, p2, p3;

            // test each contour
            for( size_t i = 0; i < contours.size(); i++ )
            {
                // approximate contour with accuracy proportional
                // to the contour perimeter
                approxPolyDP(Mat(contours[i]), approx, arcLength(Mat(contours[i]), true)*0.01, true);
				
				if (approx.size() == 4){
				
				//gets the coordinates of the vertices from the point cloud	
					p0.pixel_coordinates.x = approx[0].x;
					p0.pixel_coordinates.y = approx[0].y;
					p0.x = cloud->points[((p0.pixel_coordinates.y)*cloud->width) + p0.pixel_coordinates.x + 1].x; //i-th point is y*number of cols + x + 1
					p0.y = cloud->points[((p0.pixel_coordinates.y)*cloud->width) + p0.pixel_coordinates.x + 1].y;
					p0.z = cloud->points[((p0.pixel_coordinates.y)*cloud->width) + p0.pixel_coordinates.x + 1].z;
					p0.found = true;
					//If the vertex is not present in the cloud, approximate
					if((!(uint32_t(p0.x)) && !(uint32_t(p0.y)) && !(uint32_t(p0.z)))){     
						p0 = findClosePoint(p0, cloud);
					}
					
					p1.pixel_coordinates.x = approx[1].x;
					p1.pixel_coordinates.y = approx[1].y;
					p1.x = cloud->points[((p1.pixel_coordinates.y)*cloud->width) + p1.pixel_coordinates.x + 1].x; //i-th point is y*number of cols + x + 1
					p1.y = cloud->points[((p1.pixel_coordinates.y)*cloud->width) + p1.pixel_coordinates.x + 1].y;
					p1.z = cloud->points[((p1.pixel_coordinates.y)*cloud->width) + p1.pixel_coordinates.x + 1].z;
					p1.found = true;
					//If the vertex is not present in the cloud, approximate
					if((!(uint32_t(p1.x)) && !(uint32_t(p1.y)) && !(uint32_t(p1.z)))){      
						p1 = findClosePoint(p1, cloud);
					}

					p2.pixel_coordinates.x = approx[2].x;
					p2.pixel_coordinates.y = approx[2].y;
					p2.x = cloud->points[((p2.pixel_coordinates.y)*cloud->width) + p2.pixel_coordinates.x + 1].x; //i-th point is y*number of cols + x + 1
					p2.y = cloud->points[((p2.pixel_coordinates.y)*cloud->width) + p2.pixel_coordinates.x + 1].y;
					p2.z = cloud->points[((p2.pixel_coordinates.y)*cloud->width) + p2.pixel_coordinates.x + 1].z;
					p2.found = true;
					//If the vertex is not present in the cloud, approximate
					if((!(uint32_t(p2.x)) && !(uint32_t(p2.y)) && !(uint32_t(p2.z)))){    
						p2 = findClosePoint(p2, cloud);
					}

					p3.pixel_coordinates.x = approx[3].x;
					p3.pixel_coordinates.y = approx[3].y;
					p3.x = cloud->points[((p3.pixel_coordinates.y)*cloud->width) + p3.pixel_coordinates.x + 1].x; //i-th point is y*number of cols + x + 1
					p3.y = cloud->points[((p3.pixel_coordinates.y)*cloud->width) + p3.pixel_coordinates.x + 1].y;
					p3.z = cloud->points[((p3.pixel_coordinates.y)*cloud->width) + p3.pixel_coordinates.x + 1].z;
					p3.found = true;
					//If the vertex is not present in the cloud, approximate
					if((!(uint32_t(p3.x)) && !(uint32_t(p3.y)) && !(uint32_t(p3.z)))){ 
						p3 = findClosePoint(p3, cloud);
					}
					
					// Approx: X and Z are the floor axis, the inclination of the sensor is considered to be 0 degrees
					if(p0.found && p1.found && p2.found && p3.found){
						
						new_approx.push_back(Point2d(p0.x, p0.z));  
						new_approx.push_back(Point2d(p1.x, p1.z));
						new_approx.push_back(Point2d(p2.x, p2.z));
						new_approx.push_back(Point2d(p3.x, p3.z)); 

						if(fabs(contourArea(Mat(new_approx))) > MIN_RECTANGLE_AREA && isContourConvex(Mat(new_approx)) && fabs(contourArea(Mat(new_approx))) < MAX_RECTANGLE_AREA ){

							double maxCosine = 0;

                    		for( int j = 2; j < 5; j++ )
                    		{
                        		// find the maximum cosine of the angle between joint edges
                        		double cosine = fabs(angle(new_approx[j%4], new_approx[j-2], new_approx[j-1]));
                        		maxCosine = MAX(maxCosine, cosine);
                    		}

                    		// if cosines of all angles are small
                    		// (all angles are ~90 degree) then write quandrange
                    		// vertices to resultant sequence
                    		if( maxCosine < MAX_COSINE_VALUE)
                    		{
                    	    	x_sum_pixel = 0;
                    	    	y_sum_pixel = 0;
							
                    	    	for(int i = 0; i < 4; i++)          
                    	    	{
                    	    		x_sum_pixel += approx[i].x;
                    	    		y_sum_pixel += approx[i].y;
                    	    	}
                    	    	center.pixel_coordinates.x = x_sum_pixel/4;                    
                    	    	center.pixel_coordinates.y = y_sum_pixel/4;
                    	    	center.added = false;
								center.found = true;
								//Takes the 3D points from the organized pointcloud, pixel coordinates correspond to row and col number
								center.x = cloud->points[((center.pixel_coordinates.y)*cloud->width) + center.pixel_coordinates.x + 1].x; //i-th point: y*number of cols + x + 1
								center.y = cloud->points[((center.pixel_coordinates.y)*cloud->width) + center.pixel_coordinates.x + 1].y;
								center.z = cloud->points[((center.pixel_coordinates.y)*cloud->width) + center.pixel_coordinates.x + 1].z;

								//look for an existing point in the pointcloud close to the center we need
								if((!(uint32_t(center.x)) && !(uint32_t(center.y)) && !(uint32_t(center.z)))){ //if center doesn't exist in the cloud
					
									center = findClosePoint(center, cloud);
								}
								
								squares.push_back(approx); 

								if(center.found){
                    	    		centers.push_back(center);
								}
                    	    
                    		}
                		}
						
						new_approx.clear();
					}
				}
            }
        }
    }
}

// the function draws all the squares in the image
void drawSquares( Mat& image, vector<vector<Point> >& squares )
{
    for( size_t i = 0; i < squares.size(); i++ )
    {
        const Point* p = &squares[i][0];
        int n = (int)squares[i].size();
        polylines(image, &p, &n, 1, true, Scalar(0,255,0), 1, CV_AA);
    }
}

vector<MyPoint> centers_cleaner( Mat &image, vector<MyPoint> centers){     

	int dist_x, dist_y, dist_z, dist_centers;
	vector<MyPoint> clean_centers;

	for(int i = 0; i < int(centers.size()); i++)
	{
		for(int j = i + 1; j < int(centers.size()); j++)
		{
			dist_x = ((centers[i].x) - (centers[j].x));
			dist_y = ((centers[i].y) - (centers[j].y));
			dist_z = ((centers[i].z) - (centers[j].z));
			dist_centers = (dist_x * dist_x) + (dist_y * dist_y) + (dist_z * dist_z);  //(distance centers)^2

			//if a point is (0,0,0) it means that it has already been cosidered
			if(((centers[i].x)!=0) && ((centers[i].y)!=0) && ((centers[i].z)!=0))
			{
				if( (dist_centers < (MIN_CENTERS_DISTANCE * MIN_CENTERS_DISTANCE) ) ) //this two points are very close
				{
					centers[j].x = 0;
					centers[j].y = 0;
					centers[j].z = 0;
				}

				if (j == int(centers.size())-1)
				{
					clean_centers.push_back(centers[i]);
					//MyFilledCircle( image, centers[i], BLUE); //if you want to draw all the circles uncomment this line
				}
			}
		}
	}
	return clean_centers;
}

vector<MyPoint> centers_groupper( Mat &image, vector<MyPoint> centers){                
																					
	vector<MyPoint> group_centers; //it is the vector in which there are more close centers
	vector<vector<MyPoint> > group_centers_vector; //each center has a vector in which are stored the close centers
	vector<int> size_vector; //it stores the number of close centers for each center

	for(int i = 0; i <  int(centers.size()); i++){
		//cout << "I = " << i << " \n";

		if(centers[i].added == false) //if the center is already in a tree there is no need to call the recursive function again for it
		{
			vector<MyPoint> temporary_vector;
			centers[i].added = true;
			temporary_vector.push_back(centers[i]);
			recursive(i, centers, temporary_vector);                           	
			group_centers_vector.push_back(temporary_vector);
		}

	}

	//add the size of each group to "size_vector"
	for(int k = 0; k < int(centers.size()); k++){
		size_vector.push_back(group_centers_vector[k].size());

	}

	if(!(size_vector.empty()))
	{
		int bigger_group = 0;
		int max_size = 0;

		for(int h = 0; h < int(size_vector.size()); h++)
			{
				if(size_vector[h] > max_size)
				{
					max_size = size_vector[h];
					bigger_group = h;
				}
			}

		group_centers = group_centers_vector[bigger_group];

		if(max_size > 1)//print green circles only if there are at least two
		{
			//draw green circles in the bigger group
			for(int g = 0; g < int(group_centers.size()); g++)
			{
				MyFilledCircle( image, group_centers[g], GREEN);             
			}
		}
	}
	return  group_centers;
}

void recursive(int current, vector<MyPoint> centers, vector<MyPoint> &temporary_vector){            

	int dist_x, dist_y, dist_z, dist_centers;

	for( int j = 0; j < int(centers.size()); j++)
	{
		dist_x = ((centers[current].x) - (centers[j].x));
		dist_y = ((centers[current].y) - (centers[j].y));
		dist_z = ((centers[current].z) - (centers[j].z));
		dist_centers = (dist_x * dist_x) + (dist_y * dist_y) + (dist_z * dist_z); //dist_centers^2

		if((dist_centers < (MAX_CENTERS_DISTANCE * MAX_CENTERS_DISTANCE)) && (dist_centers!=0)){ //dist_centers!=0 -> the same element is not considered again
			if(centers[j].added == false) //look if centers[j] has not already been added
			{
				//temporary_vect does not contain centers[j]
				centers[j].added = true;
				temporary_vector.push_back(centers[j]);
				recursive(j, centers, temporary_vector);
			}
		}
	}
	return;
}

double coordinate_averager(vector<MyPoint> coordinate_vector, char coordinate_type){

	int coordinate_accumulator = 0;
	double average_coordinate = 0;
	if(!(coordinate_vector.empty()))
	{
		if((coordinate_type == 'x') || (coordinate_type == 'X')) //X
		{
			for(int i = 0; i < int(coordinate_vector.size()); i++)
			{
				coordinate_accumulator += coordinate_vector[i].pixel_coordinates.x;
			}
		}
		else //Y
		{
			for(int i = 0; i < int(coordinate_vector.size()); i++)
			{
				coordinate_accumulator += coordinate_vector[i].pixel_coordinates.y;
			}
		}

		average_coordinate = coordinate_accumulator / coordinate_vector.size();
	}
	return average_coordinate;
}

double m_calculator(double average_x, double average_y, vector<MyPoint> coordinate_vector){

	double m, num, den;
	num = 0;
	den = 0;
	m = 0;

	for(int i = 0; i < int(coordinate_vector.size()); i++)
	{
		num += (coordinate_vector[i].pixel_coordinates.x - average_x) * (coordinate_vector[i].pixel_coordinates.y - average_y);
		den += (coordinate_vector[i].pixel_coordinates.x - average_x) * (coordinate_vector[i].pixel_coordinates.x - average_x);
	}
	if(den)
		m = num / den;
	return m;
}

void draw_interpolation_line(Mat &image, vector<MyPoint> coordinate_vector){

	double average_x, average_y, m;
	average_x = coordinate_averager(coordinate_vector, 'x');
	average_y = coordinate_averager(coordinate_vector, 'y');
	m = m_calculator(average_x, average_y, coordinate_vector);

	//The line equation is (y-average_y)=m*(x-average_y)
	Point p1, p2;
	p1.y = 600;
	p2.y = image.rows;
	p1.x = (p1.y - average_y)/m + average_x;
	p2.x = (p2.y - average_y)/m + average_x;

	MyLine(image, p1, p2, RED );

	return;

}

//MAIN FUNCTION
void Lines_detection( Mat &result, Mat &original, pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud){

	vector<vector<Point> > squares;
    vector<MyPoint> centers, centers_clean, centers_group;

    findSquares( result, squares, centers, cloud);

    centers_clean = centers_cleaner( original, centers);
    
	cvtColor(original, original, CV_RGB2GRAY);
	cvtColor(original, original, CV_GRAY2RGB);

	centers_group = centers_groupper( original, centers_clean );

	draw_interpolation_line( original, centers_group);

    drawSquares( original, squares ); //if you want to draw all the rectangles uncomment this line

}


