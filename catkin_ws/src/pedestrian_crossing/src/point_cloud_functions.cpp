#include "point_cloud_functions.hpp" 
#include "open_cv_functions.hpp"

/*float y_variation = 0;
float actual_time = 0;
float actual_vel = 0;*/

int frame_number = 0;
double average = 0;
double total_time = 0;

/*void accelerometer_cb (const multisense_ros::RawImuData& accel){ //TODO time is not working due to the offset!! (temporary solution with clock)

	float acceleration = 9.81 * accel.y; //acceleration in m/(s^2)

	float previous_time = actual_time; //Ti
	float actual_time = (accel.time_stamp).toSec(); //Tf

	float previous_vel = actual_vel; //Vi

	actual_vel = previous_vel + acceleration * (actual_time - previous_time); //Vf
	
	y_variation = previous_vel * (actual_time - previous_time) + 0.5 * acceleration * (actual_time - previous_time) * (actual_time - previous_time);
	y_variation = (acceleration > 0) ? y_variation : -y_variation;

	//cout << accel.y << endl;
	cout << y_variation << endl;

	return;
}*/


//XXX UNCOMMENT THIS TO OPEN THE PCL VIEWER XXX//
pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");


void cloud_cb (const sensor_msgs::PointCloud2& input)
{	
	//Time for computing a frame
	clock_t begin, end;
    double time_spent;
    begin = clock();
	frame_number++;
	
	/*
	std::cout << "width is " <<input.width << std::endl;
	std::cout << "height is " << input.height << std::endl;
	*/

	//Declaration and instantiation of a cloud pointer to be used for output
	pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_pcl(new pcl::PointCloud<pcl::PointXYZRGB>);

	//Input of the above cloud and the corresponding output of cloud_pcl
	pcl::fromROSMsg(input, *cloud_pcl); //it will be used for the plane detection algorithm

	int cloudsize = (cloud_pcl->width) * (cloud_pcl->height);
	
	cv::Mat original = cv::Mat(input.height, input.width, CV_8UC3); //when couches were still here

	int i = 0;
	uint32_t rgb_input;
    uint8_t bayer_value;
	uint8_t zero = 0;
	//int good = 0, not_good = 0, not_good_Y = 0;

	//rgb fields not found from "fromROSMsg" function, we put them inside manually
    if (cloudsize) { //the pointcloud is not empty
        for (int h=0; h<input.height; ++h) {
            for (int w=0; w<input.width; ++w, ++i) {
				
				bayer_value = input.data[i * 16 + 12]; 			//offset 12 == RGB
	//if(bayer_value){
				//std::bitset<32> b(bayer_value);
				//std::cout << "A " << b << std::endl;
				//cloud_pcl->points[i].rgb = bayer_value;       //raw data inserted
				if(h % 2){ //odd row							//raw data organized in bayer GBGR type
					if(w % 2) { //odd column
						rgb_input = ((uint32_t)bayer_value << 16 | (uint32_t)zero << 8 | (uint32_t)zero); //R
						cloud_pcl->points[i].rgb = *reinterpret_cast<float*>(&rgb_input); 
						//std::bitset<32> r(cloud_pcl->points[i].rgb);
						//std::cout << "R " << r << std::endl;
					}
					else { //even column
						rgb_input = ((uint32_t)zero << 16 | (uint32_t)bayer_value << 8 | (uint32_t)zero); //G
						cloud_pcl->points[i].rgb = *reinterpret_cast<float*>(&rgb_input); 
						
           				//std::bitset<32> g(cloud_pcl->points[i].rgb);
						//std::cout << "g " << g << std::endl;
					}
				}
				else { //even row
					if(w % 2) { //odd column
						rgb_input = ((uint32_t)zero << 16 | (uint32_t)bayer_value << 8 | (uint32_t)zero); //G
						cloud_pcl->points[i].rgb = *reinterpret_cast<float*>(&rgb_input); 
						
               			//std::bitset<32> G(cloud_pcl->points[i].rgb);
						//std::cout << "G " << G << std::endl;
					}
					else { //even column
						rgb_input = ((uint32_t)zero << 16 | (uint32_t)zero << 8 | (uint32_t)bayer_value); //B
						cloud_pcl->points[i].rgb = *reinterpret_cast<float*>(&rgb_input); 
               			
						//std::bitset<32> b(cloud_pcl->points[i].rgb);
						//std::cout << "B " << b << std::endl;
					}
				}
	//}

            }
        }
    }
	
	//XXX UNCOMMENT THIS TO SEE THE POINT CLOUD IN THE VIEWER (UNCOMMENT THE VIEWER ON TOP OF THE FILE) XXX//
	viewer.showCloud (boost::shared_ptr<const pcl::PointCloud<pcl::PointXYZRGB> >(cloud_pcl));

	///////////////////// reprojection of pcl::pointcloud ///////////////////////////////////

	i = 0;

    cv::Mat result = cv::Mat(cloud_pcl->height, cloud_pcl->width, CV_8UC3);
	uint32_t rgb_output;

    if (cloudsize) { //the pointcloud is not empty
        for (int h=0; h<result.rows; ++h) {
            for (int w=0; w<result.cols; ++w, ++i) {
				
				rgb_output = *reinterpret_cast<int*>(&cloud_pcl->points[i].rgb);


				//Fill the original image with ALL the input color data

				if(h % 2){ //odd row
					if(w % 2) { //odd column
						original.at<cv::Vec3b>(h,w)[0] = uint8_t((rgb_output >> 16) & 0x0000ff); //R
						original.at<cv::Vec3b>(h,w)[1] = 0;
               			original.at<cv::Vec3b>(h,w)[2] = 0; 
					}
					else { //even column
						original.at<cv::Vec3b>(h,w)[0] = 0;
						original.at<cv::Vec3b>(h,w)[1] = uint8_t((rgb_output >> 8) & 0x0000ff); //G
               			original.at<cv::Vec3b>(h,w)[2] = 0;
					}
				}
				else { //even row
					if(w % 2) { //odd column
						original.at<cv::Vec3b>(h,w)[0] = 0;
						original.at<cv::Vec3b>(h,w)[1] = uint8_t((rgb_output >> 8) & 0x0000ff); //G
               			original.at<cv::Vec3b>(h,w)[2] = 0;
					}
					else { //even column
						original.at<cv::Vec3b>(h,w)[0] = 0;
						original.at<cv::Vec3b>(h,w)[1] = 0;
               			original.at<cv::Vec3b>(h,w)[2] = uint8_t((rgb_output) & 0x0000ff); //B
					}
				}



				//Filter and fill the result image

				rgb_output = *reinterpret_cast<int*>(&cloud_pcl->points[i].rgb);

				//out of interest points:
				if(((input.data[i * 16 ] == 0) && (input.data[i * 16 + 4] == 0) && (input.data[i * 16 + 8] == 0)) && i < cloudsize/2){ //filter points out cloud
					result.at<cv::Vec3b>(h,w)[0] = 0;
                	result.at<cv::Vec3b>(h,w)[1] = 0;
                	result.at<cv::Vec3b>(h,w)[2] = 0;
					//not_good++;
				}
				
				else if((cloud_pcl->points[i].y < (SENSOR_HEIGHT - 0.1))){ //filter on Y
					result.at<cv::Vec3b>(h,w)[0] = 0;
                	result.at<cv::Vec3b>(h,w)[1] = 0;
                	result.at<cv::Vec3b>(h,w)[2] = 255;
					//not_good_Y++;
				}

				//good points:
				else{                                                  
					if(h % 2){ //odd row
						if(w % 2) { //odd column
							result.at<cv::Vec3b>(h,w)[0] = uint8_t((rgb_output >> 16) & 0x0000ff); //R
							result.at<cv::Vec3b>(h,w)[1] = 0;
               				result.at<cv::Vec3b>(h,w)[2] = 0; 
						}
						else { //even column
							result.at<cv::Vec3b>(h,w)[0] = 0;
							result.at<cv::Vec3b>(h,w)[1] = uint8_t((rgb_output >> 8) & 0x0000ff); //G
               				result.at<cv::Vec3b>(h,w)[2] = 0;
						}
					}
					else { //even row
						if(w % 2) { //odd column
							result.at<cv::Vec3b>(h,w)[0] = 0;
							result.at<cv::Vec3b>(h,w)[1] = uint8_t((rgb_output >> 8) & 0x0000ff); //G
               				result.at<cv::Vec3b>(h,w)[2] = 0;
						}
						else { //even column
							result.at<cv::Vec3b>(h,w)[0] = 0;
							result.at<cv::Vec3b>(h,w)[1] = 0;
               				result.at<cv::Vec3b>(h,w)[2] = uint8_t((rgb_output) & 0x0000ff); //B
						}
					}
					//good++;
				}
            }
        }
    }

	//std::cout << "GOOD : " << good << " NOT GOOD : " << not_good << " NOT GOOD Y2: " << not_good_Y << std::endl;

	//cvtColor(result, result, CV_BayerGB2RGB);

	cv::Mat aux; 
    aux = cv::Mat(input.height, input.width, CV_8UC3);
	cvtColor(original, aux, CV_RGB2GRAY);
	cv::imshow("original", aux);

	Lines_detection(result, original, cloud_pcl);

	//cvtColor(result, result, CV_RGB2GRAY);
	//XXX UNCOMMENT THIS (AND WAITKEY) TO SEE THE FILTERED IMAGE XXX//
	cv::imshow("img", result);
	//XXX UNCOMMENT THIS TO SEE THE IMAGE WITH THE LINES DETECTED XXX//
	cv::imshow("detected", original);
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
/*	uint32_t RGB_input;
	uint8_t r_input;
	uint8_t g_input;
	uint8_t b_input;
	cv::Mat result_input; 

    result_input = cv::Mat(input.height, input.width, CV_8UC3);
    i = 0;
    if (input.height * input.width) { //the pointcloud is not empty

        for (int h=0; h<result_input.rows; ++h) {
            for (int w=0; w<result_input.cols; ++w, ++i) {
				
				RGB_input = input.data[i * 16 + 12];
				r_input = ( RGB_input >> 16) & 0x0000ff;
				g_input = ( RGB_input >> 8) & 0x0000ff;
				b_input = ( RGB_input ) & 0x0000ff;

                result_input.at<cv::Vec3b>(h,w)[0] = b_input;
                result_input.at<cv::Vec3b>(h,w)[1] = g_input;
                result_input.at<cv::Vec3b>(h,w)[2] = r_input;
            }
        }
    }

	//cvtColor(result_input, result_input, CV_RGB2GRAY);
	cv::imshow("img_not_filtered",result_input);
	cv::waitKey(3);	

*//////////////////////////////////////////////////////////////////////////

	end = clock();
    time_spent = (double)(end - begin) / 2900000;
	//XXX UNCOMMENT THIS TO SEE THE TIME SPENT FOR EACH FRAME ON THE CONSOLE
    cout << "TIME SPENT : " << time_spent << 's' << std::endl;
	//XXX UNCOMMENT THIS TO SEE THE AVERAGE TIME SPENT FOR EACH FRAME ON THE CONSOLE
	//total_time += time_spent;                                //XXX IF YOU DON'T RESTART THE PROGRAM THIS TOTAL TIME DOES NOT GET ERASED (-->core dumped after ~10 bagfile)
	//average = total_time / frame_number;
	//cout << "AVERAGE TIME SPENT : " << average << 's' << std::endl;
	

}



