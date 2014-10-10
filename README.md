crosswalk: Pedestrian crossing detection project
=========

The goal of this project is to develop a system that can robustly detect crosswalks for a blind person to be able to cross Boston’s streets more safely.

The code is in the catkin_ws/src directory.

Authors: 
	 Simone Fontanesi simonefonta@hotmail.it
	 Alessandro Frigerio afrigerio91@gmail.com

Date : September 29th, 2014
----------------------------------------------

FOLDERS EXPLANATION:
1)canny, point_cloud_multisense
Auxiliary folder used during the development of the code, do not consider them

2)multisense-3.1
Multisense driver, including organized point clouds topics (/multisense/image_points2_color_organized and /multisense/image_points2_organized). An organized point cloud is very useful because you can easily reproject it to a 2D image.

3)pedestrian_crossing
This is the folder where the relevant files are placed.

For prerequisites see "catkin_ws/src/pedestrian_crossing-requirements.txt"
For launching the program see "catkin_ws/src/pedestrian_crossing_launch.txt"
For TODO thing see "catkin_ws/src/Future_work.txt"

----------------------------------------