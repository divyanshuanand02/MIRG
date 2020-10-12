// Auto-generated. Do not edit!

// (in-package ssl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LinearMotionInstant = require('./LinearMotionInstant.js');
let MotionConstraints = require('./MotionConstraints.js');
let DynamicObstacle = require('./DynamicObstacle.js');
let point_2d = require('./point_2d.js');

//-----------------------------------------------------------

class trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.goal = null;
      this.m_c = null;
      this.startTime = null;
      this.dynamic_obstacle = null;
      this.biasWaypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new LinearMotionInstant();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new LinearMotionInstant();
      }
      if (initObj.hasOwnProperty('m_c')) {
        this.m_c = initObj.m_c
      }
      else {
        this.m_c = new MotionConstraints();
      }
      if (initObj.hasOwnProperty('startTime')) {
        this.startTime = initObj.startTime
      }
      else {
        this.startTime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('dynamic_obstacle')) {
        this.dynamic_obstacle = initObj.dynamic_obstacle
      }
      else {
        this.dynamic_obstacle = [];
      }
      if (initObj.hasOwnProperty('biasWaypoints')) {
        this.biasWaypoints = initObj.biasWaypoints
      }
      else {
        this.biasWaypoints = new point_2d();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type trajectory
    // Serialize message field [start]
    bufferOffset = LinearMotionInstant.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = LinearMotionInstant.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [m_c]
    bufferOffset = MotionConstraints.serialize(obj.m_c, buffer, bufferOffset);
    // Serialize message field [startTime]
    bufferOffset = _serializer.time(obj.startTime, buffer, bufferOffset);
    // Serialize message field [dynamic_obstacle]
    // Serialize the length for message field [dynamic_obstacle]
    bufferOffset = _serializer.uint32(obj.dynamic_obstacle.length, buffer, bufferOffset);
    obj.dynamic_obstacle.forEach((val) => {
      bufferOffset = DynamicObstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [biasWaypoints]
    bufferOffset = point_2d.serialize(obj.biasWaypoints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type trajectory
    let len;
    let data = new trajectory(null);
    // Deserialize message field [start]
    data.start = LinearMotionInstant.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = LinearMotionInstant.deserialize(buffer, bufferOffset);
    // Deserialize message field [m_c]
    data.m_c = MotionConstraints.deserialize(buffer, bufferOffset);
    // Deserialize message field [startTime]
    data.startTime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [dynamic_obstacle]
    // Deserialize array length for message field [dynamic_obstacle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dynamic_obstacle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dynamic_obstacle[i] = DynamicObstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [biasWaypoints]
    data.biasWaypoints = point_2d.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.dynamic_obstacle.length;
    return length + 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ssl_msgs/trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05da1f979f09c4d88f36b0c5fbe197e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    LinearMotionInstant start
    LinearMotionInstant goal
    MotionConstraints m_c
    time startTime
    DynamicObstacle[] dynamic_obstacle
    point_2d biasWaypoints
    
    ================================================================================
    MSG: ssl_msgs/LinearMotionInstant
    point_2d pos
    point_2d vel
    
    ================================================================================
    MSG: ssl_msgs/point_2d
    float64 x
    float64 y
    
    ================================================================================
    MSG: ssl_msgs/MotionConstraints
    float64 max_speed
    float64 max_acceleration
    
    ================================================================================
    MSG: ssl_msgs/DynamicObstacle
    point_2d pos
    float64 radius
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new trajectory(null);
    if (msg.start !== undefined) {
      resolved.start = LinearMotionInstant.Resolve(msg.start)
    }
    else {
      resolved.start = new LinearMotionInstant()
    }

    if (msg.goal !== undefined) {
      resolved.goal = LinearMotionInstant.Resolve(msg.goal)
    }
    else {
      resolved.goal = new LinearMotionInstant()
    }

    if (msg.m_c !== undefined) {
      resolved.m_c = MotionConstraints.Resolve(msg.m_c)
    }
    else {
      resolved.m_c = new MotionConstraints()
    }

    if (msg.startTime !== undefined) {
      resolved.startTime = msg.startTime;
    }
    else {
      resolved.startTime = {secs: 0, nsecs: 0}
    }

    if (msg.dynamic_obstacle !== undefined) {
      resolved.dynamic_obstacle = new Array(msg.dynamic_obstacle.length);
      for (let i = 0; i < resolved.dynamic_obstacle.length; ++i) {
        resolved.dynamic_obstacle[i] = DynamicObstacle.Resolve(msg.dynamic_obstacle[i]);
      }
    }
    else {
      resolved.dynamic_obstacle = []
    }

    if (msg.biasWaypoints !== undefined) {
      resolved.biasWaypoints = point_2d.Resolve(msg.biasWaypoints)
    }
    else {
      resolved.biasWaypoints = new point_2d()
    }

    return resolved;
    }
};

module.exports = trajectory;
