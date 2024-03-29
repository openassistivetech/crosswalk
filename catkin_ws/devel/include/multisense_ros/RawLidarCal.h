/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg/RawLidarCal.msg
 *
 */


#ifndef MULTISENSE_ROS_MESSAGE_RAWLIDARCAL_H
#define MULTISENSE_ROS_MESSAGE_RAWLIDARCAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace multisense_ros
{
template <class ContainerAllocator>
struct RawLidarCal_
{
  typedef RawLidarCal_<ContainerAllocator> Type;

  RawLidarCal_()
    : laserToSpindle()
    , cameraToSpindleFixed()  {
      laserToSpindle.assign(0.0);

      cameraToSpindleFixed.assign(0.0);
  }
  RawLidarCal_(const ContainerAllocator& _alloc)
    : laserToSpindle()
    , cameraToSpindleFixed()  {
      laserToSpindle.assign(0.0);

      cameraToSpindleFixed.assign(0.0);
  }



   typedef boost::array<float, 16>  _laserToSpindle_type;
  _laserToSpindle_type laserToSpindle;

   typedef boost::array<float, 16>  _cameraToSpindleFixed_type;
  _cameraToSpindleFixed_type cameraToSpindleFixed;




  typedef boost::shared_ptr< ::multisense_ros::RawLidarCal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::multisense_ros::RawLidarCal_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct RawLidarCal_

typedef ::multisense_ros::RawLidarCal_<std::allocator<void> > RawLidarCal;

typedef boost::shared_ptr< ::multisense_ros::RawLidarCal > RawLidarCalPtr;
typedef boost::shared_ptr< ::multisense_ros::RawLidarCal const> RawLidarCalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::multisense_ros::RawLidarCal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::multisense_ros::RawLidarCal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace multisense_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'multisense_ros': ['/home/drc/catkin_ws/src/multisense-3.1/multisense_ros/msg'], 'geometry_msgs': ['/opt/ros/groovy/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/groovy/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/groovy/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::multisense_ros::RawLidarCal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::multisense_ros::RawLidarCal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multisense_ros::RawLidarCal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multisense_ros::RawLidarCal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multisense_ros::RawLidarCal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multisense_ros::RawLidarCal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::multisense_ros::RawLidarCal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a40a2eda974181d5f5f21ff840e3a6ff";
  }

  static const char* value(const ::multisense_ros::RawLidarCal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa40a2eda974181d5ULL;
  static const uint64_t static_value2 = 0xf5f21ff840e3a6ffULL;
};

template<class ContainerAllocator>
struct DataType< ::multisense_ros::RawLidarCal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multisense_ros/RawLidarCal";
  }

  static const char* value(const ::multisense_ros::RawLidarCal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::multisense_ros::RawLidarCal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[16] laserToSpindle\n\
float32[16] cameraToSpindleFixed\n\
";
  }

  static const char* value(const ::multisense_ros::RawLidarCal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::multisense_ros::RawLidarCal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.laserToSpindle);
      stream.next(m.cameraToSpindleFixed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct RawLidarCal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::multisense_ros::RawLidarCal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::multisense_ros::RawLidarCal_<ContainerAllocator>& v)
  {
    s << indent << "laserToSpindle[]" << std::endl;
    for (size_t i = 0; i < v.laserToSpindle.size(); ++i)
    {
      s << indent << "  laserToSpindle[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.laserToSpindle[i]);
    }
    s << indent << "cameraToSpindleFixed[]" << std::endl;
    for (size_t i = 0; i < v.cameraToSpindleFixed.size(); ++i)
    {
      s << indent << "  cameraToSpindleFixed[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.cameraToSpindleFixed[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULTISENSE_ROS_MESSAGE_RAWLIDARCAL_H
