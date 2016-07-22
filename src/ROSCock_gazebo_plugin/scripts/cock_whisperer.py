import rospy
from std_msgs.msg import Float32
import time
import math
def talker():
    pub = rospy.Publisher('cock_control', Float32, queue_size=10)
    rospy.init_node('Whisperer')
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        pub.publish(2*math.sin(time.time()))
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
