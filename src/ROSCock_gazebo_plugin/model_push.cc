#include <boost/bind.hpp>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <stdio.h>
#include <string.h>
#include <string>
#include <math.h>
#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <typeinfo>
void ControlCallback( const std_msgs::Float32::ConstPtr& msg)
{
      //prints yo shit
  std::cout << "TOPKEK\n";
}    
namespace gazebo
{
  class ModelPush : public ModelPlugin
  {
   
    public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      // Store the pointer to the model
      this->model = _parent;
      
      std::cout << "Initializing\n";
      //handles the cocks
      if (!ros::isInitialized())
	{
	  std::cout << "NO ROS\n";
	}
      int argc = 0;
      char** argv = NULL;
      //ros::init(argc, argv, "ass", ros::init_options::NoSigintHandler);
     
     
      // Listen to the update event. This event is broadcast every
      // simulation iteration.
      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          boost::bind(&ModelPush::OnUpdate, this, _1));
      //printf("load\n");
      
    }
    float count;
    // Called by the world update start event
    public: void OnUpdate(const common::UpdateInfo & _info)
    {
      std::ifstream myfile;
      float p;
      float k = 1;
      std::string kekstr;
      myfile.open("/tmp/topkek");
      getline(myfile,kekstr);
      if(typeid(p)==typeid(k) && kekstr.length() > 0) {
	//printf("%s\n",kekstr.c_str());
	p = std::stof(kekstr);
      }
      myfile.close();
      //std::cout << p << "\n";
      float delta = _info.simTime.Float() - lastTime.Float();
      lastTime = _info.simTime;
      //count++;
      doAngularUpdate(delta);
      doTranslateUpdate(delta);
      setTargetAngleVel(p);
      //this->model->SetAngularAccel(math::Vector3(0,0,1.0));
      //if((int)count % 20 == 0){
      //setTargetAngleVel(5 * sin(count/200.0));
      //	}
      // Apply a small linear velocity to the model.
    }

  public: void setTargetAngleVel(float targetVel){
    eD = 0;
    eI = 0;
    targetAngVel = targetVel;
  }
 
  private: void doAngularUpdate(float delta)
    {
      math::Vector3 vel = this->model->GetRelativeAngularVel();
      float error = targetAngVel - this->model->GetRelativeAngularVel().z;
      //printf("%f\n",error);
      eI += error;
      vel.z += (error*p + eI*i + (error - eD)*d)*delta;
      this->model->SetAngularVel(vel);
      eD = error;
    }
  private: void doTranslateUpdate(float delta)
    {
      math::Pose relPose = this->model->GetWorldPose();
      //cos(relPose.rot.z) * (delta * speed)
      //sin(relPose.rot.z) * (delta * speed)
      //printf("%f\n", relPose.rot.GetYaw());
      float yaw = relPose.rot.GetYaw();
      this->model->SetLinearVel(math::Vector3(cos(yaw),sin(yaw),0.0));
    }


    // Pointer to the model
    private: physics::ModelPtr model;

    // Pointer to the update event connection
    private: event::ConnectionPtr updateConnection;

  private: float targetAngVel = 1.0; 
  private: float p = 2.0;
  private: float i = 0.0;
  private: float d = 0.0;
  private: float eI = 0.0;
  private: float eD = 0.0;
  private: common::Time lastTime;
  private: float speed = 1.0;
  };

  // Register this plugin with the simulator
  GZ_REGISTER_MODEL_PLUGIN(ModelPush)
}
