// Auto-generated. Do not edit!

// (in-package ssl_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bot_id = null;
      this.avoid_ball = null;
    }
    else {
      if (initObj.hasOwnProperty('bot_id')) {
        this.bot_id = initObj.bot_id
      }
      else {
        this.bot_id = 0;
      }
      if (initObj.hasOwnProperty('avoid_ball')) {
        this.avoid_ball = initObj.avoid_ball
      }
      else {
        this.avoid_ball = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type path
    // Serialize message field [bot_id]
    bufferOffset = _serializer.uint8(obj.bot_id, buffer, bufferOffset);
    // Serialize message field [avoid_ball]
    bufferOffset = _serializer.bool(obj.avoid_ball, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type path
    let len;
    let data = new path(null);
    // Deserialize message field [bot_id]
    data.bot_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [avoid_ball]
    data.avoid_ball = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ssl_msg/path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b290706c1e9391a3b799a706b62cb02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 bot_id
    bool avoid_ball
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new path(null);
    if (msg.bot_id !== undefined) {
      resolved.bot_id = msg.bot_id;
    }
    else {
      resolved.bot_id = 0
    }

    if (msg.avoid_ball !== undefined) {
      resolved.avoid_ball = msg.avoid_ball;
    }
    else {
      resolved.avoid_ball = false
    }

    return resolved;
    }
};

module.exports = path;
