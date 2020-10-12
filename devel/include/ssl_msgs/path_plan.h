// Generated by gencpp from file ssl_msgs/path_plan.msg
// DO NOT EDIT!


#ifndef SSL_MSGS_MESSAGE_PATH_PLAN_H
#define SSL_MSGS_MESSAGE_PATH_PLAN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ssl_msgs/LinearMotionInstant.h>
#include <ssl_msgs/LinearMotionInstant.h>
#include <ssl_msgs/MotionConstraints.h>
#include <ssl_msgs/DynamicObstacle.h>
#include <ssl_msgs/StaticObstacle.h>
#include <ssl_msgs/point_2d.h>

namespace ssl_msgs
{
template <class ContainerAllocator>
struct path_plan_
{
  typedef path_plan_<ContainerAllocator> Type;

  path_plan_()
    : start()
    , goal()
    , m_c()
    , startTime()
    , dynamic_obstacle()
    , static_obstacle()
    , biasWaypoints()  {
    }
  path_plan_(const ContainerAllocator& _alloc)
    : start(_alloc)
    , goal(_alloc)
    , m_c(_alloc)
    , startTime()
    , dynamic_obstacle(_alloc)
    , static_obstacle(_alloc)
    , biasWaypoints(_alloc)  {
  (void)_alloc;
    }



   typedef  ::ssl_msgs::LinearMotionInstant_<ContainerAllocator>  _start_type;
  _start_type start;

   typedef  ::ssl_msgs::LinearMotionInstant_<ContainerAllocator>  _goal_type;
  _goal_type goal;

   typedef  ::ssl_msgs::MotionConstraints_<ContainerAllocator>  _m_c_type;
  _m_c_type m_c;

   typedef ros::Time _startTime_type;
  _startTime_type startTime;

   typedef std::vector< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >::other >  _dynamic_obstacle_type;
  _dynamic_obstacle_type dynamic_obstacle;

   typedef std::vector< ::ssl_msgs::StaticObstacle_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::StaticObstacle_<ContainerAllocator> >::other >  _static_obstacle_type;
  _static_obstacle_type static_obstacle;

   typedef  ::ssl_msgs::point_2d_<ContainerAllocator>  _biasWaypoints_type;
  _biasWaypoints_type biasWaypoints;





  typedef boost::shared_ptr< ::ssl_msgs::path_plan_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_msgs::path_plan_<ContainerAllocator> const> ConstPtr;

}; // struct path_plan_

typedef ::ssl_msgs::path_plan_<std::allocator<void> > path_plan;

typedef boost::shared_ptr< ::ssl_msgs::path_plan > path_planPtr;
typedef boost::shared_ptr< ::ssl_msgs::path_plan const> path_planConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ssl_msgs::path_plan_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ssl_msgs::path_plan_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ssl_msgs::path_plan_<ContainerAllocator1> & lhs, const ::ssl_msgs::path_plan_<ContainerAllocator2> & rhs)
{
  return lhs.start == rhs.start &&
    lhs.goal == rhs.goal &&
    lhs.m_c == rhs.m_c &&
    lhs.startTime == rhs.startTime &&
    lhs.dynamic_obstacle == rhs.dynamic_obstacle &&
    lhs.static_obstacle == rhs.static_obstacle &&
    lhs.biasWaypoints == rhs.biasWaypoints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ssl_msgs::path_plan_<ContainerAllocator1> & lhs, const ::ssl_msgs::path_plan_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ssl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ssl_msgs::path_plan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ssl_msgs::path_plan_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ssl_msgs::path_plan_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ssl_msgs::path_plan_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ssl_msgs::path_plan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ssl_msgs::path_plan_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ssl_msgs::path_plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "26d1898b37a0c391ab33fae4f5394b29";
  }

  static const char* value(const ::ssl_msgs::path_plan_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x26d1898b37a0c391ULL;
  static const uint64_t static_value2 = 0xab33fae4f5394b29ULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_msgs::path_plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ssl_msgs/path_plan";
  }

  static const char* value(const ::ssl_msgs::path_plan_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ssl_msgs::path_plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "LinearMotionInstant start\n"
"LinearMotionInstant goal\n"
"MotionConstraints m_c\n"
"time startTime\n"
"DynamicObstacle[] dynamic_obstacle\n"
"StaticObstacle[] static_obstacle\n"
"point_2d biasWaypoints\n"
"\n"
"================================================================================\n"
"MSG: ssl_msgs/LinearMotionInstant\n"
"point_2d pos\n"
"point_2d vel\n"
"\n"
"================================================================================\n"
"MSG: ssl_msgs/point_2d\n"
"float64 x\n"
"float64 y\n"
"\n"
"================================================================================\n"
"MSG: ssl_msgs/MotionConstraints\n"
"float64 max_speed\n"
"float64 max_acceleration\n"
"\n"
"================================================================================\n"
"MSG: ssl_msgs/DynamicObstacle\n"
"point_2d pos\n"
"float64 radius\n"
"\n"
"\n"
"================================================================================\n"
"MSG: ssl_msgs/StaticObstacle\n"
"point_2d pos\n"
"float64 radius\n"
;
  }

  static const char* value(const ::ssl_msgs::path_plan_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ssl_msgs::path_plan_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start);
      stream.next(m.goal);
      stream.next(m.m_c);
      stream.next(m.startTime);
      stream.next(m.dynamic_obstacle);
      stream.next(m.static_obstacle);
      stream.next(m.biasWaypoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct path_plan_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_msgs::path_plan_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ssl_msgs::path_plan_<ContainerAllocator>& v)
  {
    s << indent << "start: ";
    s << std::endl;
    Printer< ::ssl_msgs::LinearMotionInstant_<ContainerAllocator> >::stream(s, indent + "  ", v.start);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::ssl_msgs::LinearMotionInstant_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
    s << indent << "m_c: ";
    s << std::endl;
    Printer< ::ssl_msgs::MotionConstraints_<ContainerAllocator> >::stream(s, indent + "  ", v.m_c);
    s << indent << "startTime: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.startTime);
    s << indent << "dynamic_obstacle[]" << std::endl;
    for (size_t i = 0; i < v.dynamic_obstacle.size(); ++i)
    {
      s << indent << "  dynamic_obstacle[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >::stream(s, indent + "    ", v.dynamic_obstacle[i]);
    }
    s << indent << "static_obstacle[]" << std::endl;
    for (size_t i = 0; i < v.static_obstacle.size(); ++i)
    {
      s << indent << "  static_obstacle[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ssl_msgs::StaticObstacle_<ContainerAllocator> >::stream(s, indent + "    ", v.static_obstacle[i]);
    }
    s << indent << "biasWaypoints: ";
    s << std::endl;
    Printer< ::ssl_msgs::point_2d_<ContainerAllocator> >::stream(s, indent + "  ", v.biasWaypoints);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SSL_MSGS_MESSAGE_PATH_PLAN_H