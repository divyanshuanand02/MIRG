; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude trajectory.msg.html

(cl:defclass <trajectory> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type ssl_msgs-msg:LinearMotionInstant
    :initform (cl:make-instance 'ssl_msgs-msg:LinearMotionInstant))
   (goal
    :reader goal
    :initarg :goal
    :type ssl_msgs-msg:LinearMotionInstant
    :initform (cl:make-instance 'ssl_msgs-msg:LinearMotionInstant))
   (m_c
    :reader m_c
    :initarg :m_c
    :type ssl_msgs-msg:MotionConstraints
    :initform (cl:make-instance 'ssl_msgs-msg:MotionConstraints))
   (startTime
    :reader startTime
    :initarg :startTime
    :type cl:real
    :initform 0)
   (dynamic_obstacle
    :reader dynamic_obstacle
    :initarg :dynamic_obstacle
    :type (cl:vector ssl_msgs-msg:DynamicObstacle)
   :initform (cl:make-array 0 :element-type 'ssl_msgs-msg:DynamicObstacle :initial-element (cl:make-instance 'ssl_msgs-msg:DynamicObstacle)))
   (biasWaypoints
    :reader biasWaypoints
    :initarg :biasWaypoints
    :type ssl_msgs-msg:point_2d
    :initform (cl:make-instance 'ssl_msgs-msg:point_2d)))
)

(cl:defclass trajectory (<trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<trajectory> is deprecated: use ssl_msgs-msg:trajectory instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:start-val is deprecated.  Use ssl_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:goal-val is deprecated.  Use ssl_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'm_c-val :lambda-list '(m))
(cl:defmethod m_c-val ((m <trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:m_c-val is deprecated.  Use ssl_msgs-msg:m_c instead.")
  (m_c m))

(cl:ensure-generic-function 'startTime-val :lambda-list '(m))
(cl:defmethod startTime-val ((m <trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:startTime-val is deprecated.  Use ssl_msgs-msg:startTime instead.")
  (startTime m))

(cl:ensure-generic-function 'dynamic_obstacle-val :lambda-list '(m))
(cl:defmethod dynamic_obstacle-val ((m <trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:dynamic_obstacle-val is deprecated.  Use ssl_msgs-msg:dynamic_obstacle instead.")
  (dynamic_obstacle m))

(cl:ensure-generic-function 'biasWaypoints-val :lambda-list '(m))
(cl:defmethod biasWaypoints-val ((m <trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:biasWaypoints-val is deprecated.  Use ssl_msgs-msg:biasWaypoints instead.")
  (biasWaypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <trajectory>) ostream)
  "Serializes a message object of type '<trajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'm_c) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'startTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'startTime) (cl:floor (cl:slot-value msg 'startTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dynamic_obstacle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dynamic_obstacle))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'biasWaypoints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <trajectory>) istream)
  "Deserializes a message object of type '<trajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'm_c) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'startTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dynamic_obstacle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dynamic_obstacle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ssl_msgs-msg:DynamicObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'biasWaypoints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<trajectory>)))
  "Returns string type for a message object of type '<trajectory>"
  "ssl_msgs/trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trajectory)))
  "Returns string type for a message object of type 'trajectory"
  "ssl_msgs/trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<trajectory>)))
  "Returns md5sum for a message object of type '<trajectory>"
  "05da1f979f09c4d88f36b0c5fbe197e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'trajectory)))
  "Returns md5sum for a message object of type 'trajectory"
  "05da1f979f09c4d88f36b0c5fbe197e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<trajectory>)))
  "Returns full string definition for message of type '<trajectory>"
  (cl:format cl:nil "LinearMotionInstant start~%LinearMotionInstant goal~%MotionConstraints m_c~%time startTime~%DynamicObstacle[] dynamic_obstacle~%point_2d biasWaypoints~%~%================================================================================~%MSG: ssl_msgs/LinearMotionInstant~%point_2d pos~%point_2d vel~%~%================================================================================~%MSG: ssl_msgs/point_2d~%float64 x~%float64 y~%~%================================================================================~%MSG: ssl_msgs/MotionConstraints~%float64 max_speed~%float64 max_acceleration~%~%================================================================================~%MSG: ssl_msgs/DynamicObstacle~%point_2d pos~%float64 radius~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'trajectory)))
  "Returns full string definition for message of type 'trajectory"
  (cl:format cl:nil "LinearMotionInstant start~%LinearMotionInstant goal~%MotionConstraints m_c~%time startTime~%DynamicObstacle[] dynamic_obstacle~%point_2d biasWaypoints~%~%================================================================================~%MSG: ssl_msgs/LinearMotionInstant~%point_2d pos~%point_2d vel~%~%================================================================================~%MSG: ssl_msgs/point_2d~%float64 x~%float64 y~%~%================================================================================~%MSG: ssl_msgs/MotionConstraints~%float64 max_speed~%float64 max_acceleration~%~%================================================================================~%MSG: ssl_msgs/DynamicObstacle~%point_2d pos~%float64 radius~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <trajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'm_c))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dynamic_obstacle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'biasWaypoints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'trajectory
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':m_c (m_c msg))
    (cl:cons ':startTime (startTime msg))
    (cl:cons ':dynamic_obstacle (dynamic_obstacle msg))
    (cl:cons ':biasWaypoints (biasWaypoints msg))
))
