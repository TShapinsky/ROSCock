#include <ros/ros.h>
#include <std_msgs/Float32.h>

#include <sstream>

void callback123(const std_msgs::Float32::ConstPtr& msg)
{
  printf("TOPKEK");
}

int main(int argc, char ** argv)
{
  ros::init(argc, argv, "IkeaListener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("/cock_control", 1000, callback123);
  ros::spin();
}
