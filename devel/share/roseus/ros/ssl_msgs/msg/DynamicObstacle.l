;; Auto-generated. Do not edit!


(when (boundp 'ssl_msgs::DynamicObstacle)
  (if (not (find-package "SSL_MSGS"))
    (make-package "SSL_MSGS"))
  (shadow 'DynamicObstacle (find-package "SSL_MSGS")))
(unless (find-package "SSL_MSGS::DYNAMICOBSTACLE")
  (make-package "SSL_MSGS::DYNAMICOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude DynamicObstacle.msg.html


(defclass ssl_msgs::DynamicObstacle
  :super ros::object
  :slots (_pos _radius ))

(defmethod ssl_msgs::DynamicObstacle
  (:init
   (&key
    ((:pos __pos) (instance ssl_msgs::point_2d :init))
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _radius (float __radius))
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; ssl_msgs/point_2d _pos
    (send _pos :serialization-length)
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ssl_msgs/point_2d _pos
       (send _pos :serialize s)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ssl_msgs/point_2d _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ssl_msgs::DynamicObstacle :md5sum-) "9e88681713bde42f279e98f00927b826")
(setf (get ssl_msgs::DynamicObstacle :datatype-) "ssl_msgs/DynamicObstacle")
(setf (get ssl_msgs::DynamicObstacle :definition-)
      "point_2d pos
float64 radius


================================================================================
MSG: ssl_msgs/point_2d
float64 x
float64 y

")



(provide :ssl_msgs/DynamicObstacle "9e88681713bde42f279e98f00927b826")


