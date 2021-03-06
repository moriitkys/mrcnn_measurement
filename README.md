# mrcnn_measurement
Measurement of  max &amp; min diameters of inferenced objects by Mask RCNN
Recommended sensor : RealSense D435  
## Usage :  
Notice! If you get an error by executing download_files.sh, please download from under URLs.
https://drive.google.com/file/d/1jDSxzqlHILCcwQGtHmI43A78a8lG1hSb/view?usp=sharing
https://drive.google.com/file/d/1rrKQBYAzL9TwhA3B7sgVlmE0XPD2Ji8f/view?usp=sharing
https://drive.google.com/file/d/1p6egLmlxAb4cv7UfUwLtZ0oZxJkFhBhs/view?usp=sharing
https://drive.google.com/file/d/1710BCuNIz8KxsLGuOWHk0Z8VsHMvR1iO/view?usp=sharing

(0, sh download_files.sh) <= First time only  
1, roslaunch realsense2_camera rs_aligned_depth.launch  
2, roslaunch mrcnn_measurement mrcnn_measurement.launch  
or  
(0, sh download_files.sh) <= First time only  
1, roslaunch mrcnn_measurement mrcnn_measurement_rosbag.launch (change <param name="~model" value="mymodel" />)  

## Sample Results :  
![example1](imgs/snappeas1_short.gif)
![example2](imgs/bolt1_short.gif)
![example3](imgs/maruta_measure_2.png)
![example4](imgs/coco1_short.gif)


# Requirements
ros kinetic
h5py==2.7.0  
Keras==2.1.3  
scikit-image==0.13.0  
scikit-learn==0.19.1  
scipy==0.19.1  
tensorflow-gpu==1.4.0  
GTX1060, cudnn==6.0, CUDA==8.0  
realsense2_camera (http://wiki.ros.org/realsense2_camera)  

# Parameters
img_sensor_size_0 : The width size of RGBD sensor  
img_sensor_size_1 : The height size of RGBD sensor  
fx : Focal length expressed in pixels  
