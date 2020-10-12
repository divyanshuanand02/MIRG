; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude LinearMotionInstant.msg.html

(cl:defclass <LinearMotionInstant> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type ssl_msgs-msg:point_2d
    :initform (cl:make-instance 'ssl_msgs-msg:point_2d))
   (vel
    :reader vel
    :initarg :vel
    :type ssl_msgs-msg:point_2d
    :initform (cl:make-instance 'ssl_msgs-msg:point_2d)))
)

(cl:defclass LinearMotionInstant (<LinearMotionInstant>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinearMotionInstant>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinearMotionInstant)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<LinearMotionInstant> is deprecated: use ssl_msgs-msg:LinearMotionInstant instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <LinearMotionInstant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:pos-val is deprecated.  Use ssl_msgs-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <LinearMotionInstant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:vel-val is deprecated.  Use ssl_msgs-msg:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinearMotionInstant>) ostream)
  "Serializes a message object of type '<LinearMotionInstant>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinearMotionInstant>) istream)
  "Deserializes a message object of type '<LinearMotionInstant>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinearMotionInstant>)))
  "Returns string type for a message object of type '<LinearMotionInstant>"
  "ssl_msgs/LinearMotionInstant")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinearMotionInstant)))
  "Returns string type for a message object of type 'LinearMotionInstant"
  "ssl_msgs/LinearMotionInstant")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinearMotionInstant>)))
  "Returns md5sum for a message object of type '<LinearMotionInstant>"
  "7676e8ef895f61056ed15bdab6d0319e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinearMotionInstant)))
  "Returns md5sum for a message object of type 'LinearMotionInstant"
  "7676e8ef895f61056ed15bdab6d0319e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinearMotionInstant>)))
  "Returns full string definition for message of type '<LinearMotionInstant>"
  (cl:format cl:nil "point_2d pos~%point_2d vel~%~%================================================================================~%MSG: ssl_msgs/point_2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinearMotionInstant)))
  "Returns full string definition for message of type 'LinearMotionInstant"
  (cl:format cl:nil "point_2d pos~%point_2d vel~%~%================================================================================~%MSG: ssl_msgs/point_2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinearMotionInstant>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinearMotionInstant>))
  "Converts a ROS message object to a list"
  (cl:list 'LinearMotionInstant
    (cl:cons ':pos (pos msg))
    (cl:cons ':vel (vel msg))
))
