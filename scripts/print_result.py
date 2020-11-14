#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from mrcnn_measurement.msg import Result

def callback(data):
    print("max diameter", data.max_diam, "mm")
    print("min diameter", data.min_diam, "mm")
    
def listener():
    rospy.init_node('print_result', anonymous=True)

    rospy.Subscriber("mrcnn/result", Result, callback)

    rospy.spin()
        
if __name__ == '__main__':
    listener()
