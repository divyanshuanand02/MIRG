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

class LinearMotionInstant {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos = null;
      this.vel = null;
    }
    else {
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new point_2d();
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new point_2d();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinearMotionInstant
    // Serialize message field [pos]
    bufferOffset = point_2d.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = point_2d.serialize(obj.vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinearMotionInstant
    let len;
    let data = new LinearMotionInstant(null);
    // Deserialize message field [pos]
    data.pos = point_2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = point_2d.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ssl_msgs/LinearMotionInstant';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7676e8ef895f61056ed15bdab6d0319e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    point_2d pos
    point_2d vel
    
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
    const resolved = new LinearMotionInstant(null);
    if (msg.pos !== undefined) {
      resolved.pos = point_2d.Resolve(msg.pos)
    }
    else {
      resolved.pos = new point_2d()
    }

    if (msg.vel !== undefined) {
      resolved.vel = point_2d.Resolve(msg.vel)
    }
    else {
      resolved.vel = new point_2d()
    }

    return resolved;
    }
};

module.exports = LinearMotionInstant;
