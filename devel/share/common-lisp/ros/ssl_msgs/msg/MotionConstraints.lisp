; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude MotionConstraints.msg.html

(cl:defclass <MotionConstraints> (roslisp-msg-protocol:ros-message)
  ((max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0)
   (max_acceleration
    :reader max_acceleration
    :initarg :max_acceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotionConstraints (<MotionConstraints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionConstraints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionConstraints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<MotionConstraints> is deprecated: use ssl_msgs-msg:MotionConstraints instead.")))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <MotionConstraints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:max_speed-val is deprecated.  Use ssl_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'max_acceleration-val :lambda-list '(m))
(cl:defmethod max_acceleration-val ((m <MotionConstraints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:max_acceleration-val is deprecated.  Use ssl_msgs-msg:max_acceleration instead.")
  (max_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionConstraints>) ostream)
  "Serializes a message object of type '<MotionConstraints>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionConstraints>) istream)
  "Deserializes a message object of type '<MotionConstraints>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_acceleration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionConstraints>)))
  "Returns string type for a message object of type '<MotionConstraints>"
  "ssl_msgs/MotionConstraints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionConstraints)))
  "Returns string type for a message object of type 'MotionConstraints"
  "ssl_msgs/MotionConstraints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionConstraints>)))
  "Returns md5sum for a message object of type '<MotionConstraints>"
  "8312ddf26b5967c12493eebff20ca2bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionConstraints)))
  "Returns md5sum for a message object of type 'MotionConstraints"
  "8312ddf26b5967c12493eebff20ca2bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionConstraints>)))
  "Returns full string definition for message of type '<MotionConstraints>"
  (cl:format cl:nil "float64 max_speed~%float64 max_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionConstraints)))
  "Returns full string definition for message of type 'MotionConstraints"
  (cl:format cl:nil "float64 max_speed~%float64 max_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionConstraints>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionConstraints>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionConstraints
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':max_acceleration (max_acceleration msg))
))
