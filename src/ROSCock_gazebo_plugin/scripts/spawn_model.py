#!/usr/bin/env python

import sys
import rospy
from gazebo_msgs.srv import *
from geometry_msgs.msg import Pose
from gazebo_ros import gazebo_interface
import time

def spawn_model(model_name):
    rospy.init_node('spawn_model')
    initial_pose = Pose()
    model_name = model_name
    model_xml = open('../models/ROSCock.sdf').read()
    robot_namespace = rospy.get_namespace()
    reference_frame = ""
    resp = gazebo_interface.spawn_sdf_model_client(model_name,model_xml,robot_namespace,initial_pose, reference_frame, "gazebo/")


if __name__ == "__main__":
    if len(sys.argv) > 1:
        spawn_model(sys.argv[1])
    else:
        for x in range(100):
            spawn_model("cockeyes" + str(x))
            time.sleep(.1)
       
    
