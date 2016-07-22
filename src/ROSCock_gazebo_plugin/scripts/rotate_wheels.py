#!/usr/bin/env python

import sys
import rospy
from gazebo_msgs.srv import *

def rotate_wheel(link_name,rotation):
    rospy.wait_for_service('/gazebo/get_link_state')
    rospy.wait_for_service('/gazebo/set_link_state')
    
    try:
        get_link_state = rospy.ServiceProxy('/gazebo/get_link_state', GetLinkState)
        res = get_link_state(link_name,"")
        link_state = res.link_state
        set_link_state = rospy.ServiceProxy('/gazebo/set_link_state', SetLinkState)
        link_state.twist.linear.y = rotation
        set_link_state(link_state)
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

if __name__ == "__main__":
    if len(sys.argv) > 1:
        rospy.init_node('rotate_wheels')
        rot = float(sys.argv[1])
        for x in range(1000):
            rotate_wheel("wheel_front_left",(1000-x)/500)
            rotate_wheel("wheel_front_right",(1000-x)/500)
