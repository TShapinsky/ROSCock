#include <ros/ros.h>
#include <std_msgs/Float32.h>

#include <sstream>
#include <iostream>
#include <fstream>

float topkek;

void callback123(const std_msgs::Float32::ConstPtr& msg)
{
  topkek = (float)msg->data;
  std::ofstream topkef;
  topkef.open("/tmp/topkek");
  topkef << topkek << "\n";
  topkef.close();
}

int main(int argc, char ** argv)
{
  ros::init(argc, argv, "IkeaListener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("/cock_control", 1000, callback123);
  ros::spin();
}
