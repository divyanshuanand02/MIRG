; Auto-generated. Do not edit!


(cl:in-package ssl_msg-msg)


;//! \htmlinclude path.msg.html

(cl:defclass <path> (roslisp-msg-protocol:ros-message)
  ((bot_id
    :reader bot_id
    :initarg :bot_id
    :type cl:fixnum
    :initform 0)
   (avoid_ball
    :reader avoid_ball
    :initarg :avoid_ball
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass path (<path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msg-msg:<path> is deprecated: use ssl_msg-msg:path instead.")))

(cl:ensure-generic-function 'bot_id-val :lambda-list '(m))
(cl:defmethod bot_id-val ((m <path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msg-msg:bot_id-val is deprecated.  Use ssl_msg-msg:bot_id instead.")
  (bot_id m))

(cl:ensure-generic-function 'avoid_ball-val :lambda-list '(m))
(cl:defmethod avoid_ball-val ((m <path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msg-msg:avoid_ball-val is deprecated.  Use ssl_msg-msg:avoid_ball instead.")
  (avoid_ball m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path>) ostream)
  "Serializes a message object of type '<path>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'avoid_ball) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path>) istream)
  "Deserializes a message object of type '<path>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bot_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'avoid_ball) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path>)))
  "Returns string type for a message object of type '<path>"
  "ssl_msg/path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path)))
  "Returns string type for a message object of type 'path"
  "ssl_msg/path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path>)))
  "Returns md5sum for a message object of type '<path>"
  "6b290706c1e9391a3b799a706b62cb02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path)))
  "Returns md5sum for a message object of type 'path"
  "6b290706c1e9391a3b799a706b62cb02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path>)))
  "Returns full string definition for message of type '<path>"
  (cl:format cl:nil "uint8 bot_id~%bool avoid_ball~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path)))
  "Returns full string definition for message of type 'path"
  (cl:format cl:nil "uint8 bot_id~%bool avoid_ball~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path>))
  "Converts a ROS message object to a list"
  (cl:list 'path
    (cl:cons ':bot_id (bot_id msg))
    (cl:cons ':avoid_ball (avoid_ball msg))
))
