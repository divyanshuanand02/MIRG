; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude StaticObstacle.msg.html

(cl:defclass <StaticObstacle> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type ssl_msgs-msg:point_2d
    :initform (cl:make-instance 'ssl_msgs-msg:point_2d))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass StaticObstacle (<StaticObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaticObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaticObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<StaticObstacle> is deprecated: use ssl_msgs-msg:StaticObstacle instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:pos-val is deprecated.  Use ssl_msgs-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <StaticObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:radius-val is deprecated.  Use ssl_msgs-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaticObstacle>) ostream)
  "Serializes a message object of type '<StaticObstacle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaticObstacle>) istream)
  "Deserializes a message object of type '<StaticObstacle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaticObstacle>)))
  "Returns string type for a message object of type '<StaticObstacle>"
  "ssl_msgs/StaticObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticObstacle)))
  "Returns string type for a message object of type 'StaticObstacle"
  "ssl_msgs/StaticObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaticObstacle>)))
  "Returns md5sum for a message object of type '<StaticObstacle>"
  "9e88681713bde42f279e98f00927b826")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaticObstacle)))
  "Returns md5sum for a message object of type 'StaticObstacle"
  "9e88681713bde42f279e98f00927b826")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaticObstacle>)))
  "Returns full string definition for message of type '<StaticObstacle>"
  (cl:format cl:nil "point_2d pos~%float64 radius~%~%================================================================================~%MSG: ssl_msgs/point_2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaticObstacle)))
  "Returns full string definition for message of type 'StaticObstacle"
  (cl:format cl:nil "point_2d pos~%float64 radius~%~%================================================================================~%MSG: ssl_msgs/point_2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaticObstacle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaticObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'StaticObstacle
    (cl:cons ':pos (pos msg))
    (cl:cons ':radius (radius msg))
))
