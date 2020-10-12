// Generated by gencpp from file ssl_msgs/DynamicObstacle.msg
// DO NOT EDIT!


#ifndef SSL_MSGS_MESSAGE_DYNAMICOBSTACLE_H
#define SSL_MSGS_MESSAGE_DYNAMICOBSTACLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ssl_msgs/point_2d.h>

namespace ssl_msgs
{
template <class ContainerAllocator>
struct DynamicObstacle_
{
  typedef DynamicObstacle_<ContainerAllocator> Type;

  DynamicObstacle_()
    : pos()
    , radius(0.0)  {
    }
  DynamicObstacle_(const ContainerAllocator& _alloc)
    : pos(_alloc)
    , radius(0.0)  {
  (void)_alloc;
    }



   typedef  ::ssl_msgs::point_2d_<ContainerAllocator>  _pos_type;
  _pos_type pos;

   typedef double _radius_type;
  _radius_type radius;





  typedef boost::shared_ptr< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> const> ConstPtr;

}; // struct DynamicObstacle_

typedef ::ssl_msgs::DynamicObstacle_<std::allocator<void> > DynamicObstacle;

typedef boost::shared_ptr< ::ssl_msgs::DynamicObstacle > DynamicObstaclePtr;
typedef boost::shared_ptr< ::ssl_msgs::DynamicObstacle const> DynamicObstacleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ssl_msgs::DynamicObstacle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ssl_msgs::DynamicObstacle_<ContainerAllocator1> & lhs, const ::ssl_msgs::DynamicObstacle_<ContainerAllocator2> & rhs)
{
  return lhs.pos == rhs.pos &&
    lhs.radius == rhs.radius;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ssl_msgs::DynamicObstacle_<ContainerAllocator1> & lhs, const ::ssl_msgs::DynamicObstacle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ssl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9e88681713bde42f279e98f00927b826";
  }

  static const char* value(const ::ssl_msgs::DynamicObstacle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9e88681713bde42fULL;
  static const uint64_t static_value2 = 0x279e98f00927b826ULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ssl_msgs/DynamicObstacle";
  }

  static const char* value(const ::ssl_msgs::DynamicObstacle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "point_2d pos\n"
"float64 radius\n"
"\n"
"\n"
"================================================================================\n"
"MSG: ssl_msgs/point_2d\n"
"float64 x\n"
"float64 y\n"
;
  }

  static const char* value(const ::ssl_msgs::DynamicObstacle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos);
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamicObstacle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_msgs::DynamicObstacle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ssl_msgs::DynamicObstacle_<ContainerAllocator>& v)
  {
    s << indent << "pos: ";
    s << std::endl;
    Printer< ::ssl_msgs::point_2d_<ContainerAllocator> >::stream(s, indent + "  ", v.pos);
    s << indent << "radius: ";
    Printer<double>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SSL_MSGS_MESSAGE_DYNAMICOBSTACLE_H