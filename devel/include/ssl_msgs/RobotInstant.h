// Generated by gencpp from file ssl_msgs/RobotInstant.msg
// DO NOT EDIT!


#ifndef SSL_MSGS_MESSAGE_ROBOTINSTANT_H
#define SSL_MSGS_MESSAGE_ROBOTINSTANT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Twist.h>

namespace ssl_msgs
{
template <class ContainerAllocator>
struct RobotInstant_
{
  typedef RobotInstant_<ContainerAllocator> Type;

  RobotInstant_()
    : pose()
    , velocity()
    , stamp()  {
    }
  RobotInstant_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , velocity(_alloc)
    , stamp()  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;





  typedef boost::shared_ptr< ::ssl_msgs::RobotInstant_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_msgs::RobotInstant_<ContainerAllocator> const> ConstPtr;

}; // struct RobotInstant_

typedef ::ssl_msgs::RobotInstant_<std::allocator<void> > RobotInstant;

typedef boost::shared_ptr< ::ssl_msgs::RobotInstant > RobotInstantPtr;
typedef boost::shared_ptr< ::ssl_msgs::RobotInstant const> RobotInstantConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ssl_msgs::RobotInstant_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ssl_msgs::RobotInstant_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ssl_msgs::RobotInstant_<ContainerAllocator1> & lhs, const ::ssl_msgs::RobotInstant_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.velocity == rhs.velocity &&
    lhs.stamp == rhs.stamp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ssl_msgs::RobotInstant_<ContainerAllocator1> & lhs, const ::ssl_msgs::RobotInstant_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ssl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ssl_msgs::RobotInstant_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ssl_msgs::RobotInstant_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ssl_msgs::RobotInstant_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ssl_msgs::RobotInstant_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ssl_msgs::RobotInstant_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ssl_msgs::RobotInstant_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ssl_msgs::RobotInstant_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84f99d2b24b9b97121567ccfd0165a1b";
  }

  static const char* value(const ::ssl_msgs::RobotInstant_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84f99d2b24b9b971ULL;
  static const uint64_t static_value2 = 0x21567ccfd0165a1bULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_msgs::RobotInstant_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ssl_msgs/RobotInstant";
  }

  static const char* value(const ::ssl_msgs::RobotInstant_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ssl_msgs::RobotInstant_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose pose\n"
"geometry_msgs/Twist velocity\n"
"time stamp\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::ssl_msgs::RobotInstant_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ssl_msgs::RobotInstant_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.velocity);
      stream.next(m.stamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotInstant_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_msgs::RobotInstant_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ssl_msgs::RobotInstant_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SSL_MSGS_MESSAGE_ROBOTINSTANT_H
