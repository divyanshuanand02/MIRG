;; Auto-generated. Do not edit!


(when (boundp 'ssl_msgs::MotionConstraints)
  (if (not (find-package "SSL_MSGS"))
    (make-package "SSL_MSGS"))
  (shadow 'MotionConstraints (find-package "SSL_MSGS")))
(unless (find-package "SSL_MSGS::MOTIONCONSTRAINTS")
  (make-package "SSL_MSGS::MOTIONCONSTRAINTS"))

(in-package "ROS")
;;//! \htmlinclude MotionConstraints.msg.html


(defclass ssl_msgs::MotionConstraints
  :super ros::object
  :slots (_max_speed _max_acceleration ))

(defmethod ssl_msgs::MotionConstraints
  (:init
   (&key
    ((:max_speed __max_speed) 0.0)
    ((:max_acceleration __max_acceleration) 0.0)
    )
   (send-super :init)
   (setq _max_speed (float __max_speed))
   (setq _max_acceleration (float __max_acceleration))
   self)
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:max_acceleration
   (&optional __max_acceleration)
   (if __max_acceleration (setq _max_acceleration __max_acceleration)) _max_acceleration)
  (:serialization-length
   ()
   (+
    ;; float64 _max_speed
    8
    ;; float64 _max_acceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _max_speed
       (sys::poke _max_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_acceleration
       (sys::poke _max_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _max_speed
     (setq _max_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_acceleration
     (setq _max_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ssl_msgs::MotionConstraints :md5sum-) "8312ddf26b5967c12493eebff20ca2bf")
(setf (get ssl_msgs::MotionConstraints :datatype-) "ssl_msgs/MotionConstraints")
(setf (get ssl_msgs::MotionConstraints :definition-)
      "float64 max_speed
float64 max_acceleration

")



(provide :ssl_msgs/MotionConstraints "8312ddf26b5967c12493eebff20ca2bf")


