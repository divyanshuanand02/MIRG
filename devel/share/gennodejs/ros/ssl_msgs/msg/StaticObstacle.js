// Auto-generated. Do not edit!

// (in-package ssl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let point_2d = require('./point_2d.js');

//-----------------------------------------------------------

class StaticObstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos = null;
      this.radius = null;
    }
    else {
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new point_2d();
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StaticObstacle
    // Serialize message field [pos]
    bufferOffset = point_2d.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float64(obj.radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StaticObstacle
    let len;
    let data = new StaticObstacle(null);
    // Deserialize message field [pos]
    data.pos = point_2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ssl_msgs/StaticObstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e88681713bde42f279e98f00927b826';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    point_2d pos
    float64 radius
    
    ================================================================================
    MSG: ssl_msgs/point_2d
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StaticObstacle(null);
    if (msg.pos !== undefined) {
      resolved.pos = point_2d.Resolve(msg.pos)
    }
    else {
      resolved.pos = new point_2d()
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    return resolved;
    }
};

module.exports = StaticObstacle;
