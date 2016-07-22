#!/usr/bin/env python

import sys
import rospy
from gazebo_msgs.srv import *

def apply_joint_effort(joint_name,effort):
    rospy.wait_for_service('/gazebo/apply_joint_effort')
    try:
        apply_joint_effort = rospy.ServiceProxy('/gazebo/apply_joint_effort', ApplyJointEffort)
        duration = rospy.Duration.from_sec(.1)
        start_time = rospy.Duration.from_sec(rospy.get_time())
        resp1 = apply_joint_effort(joint_name,effort, start_time, duration)
        return resp1.success
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

if __name__ == "__main__":
    if len(sys.argv) > 1:
        rospy.init_node('apply_torque')
        resp = apply_joint_effort("wheel_rear_left_spin",float(sys.argv[1]))
        resp = apply_joint_effort("wheel_rear_right_spin",float(sys.argv[1]))
