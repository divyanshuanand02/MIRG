;; Auto-generated. Do not edit!


(when (boundp 'ssl_msgs::LinearMotionInstant)
  (if (not (find-package "SSL_MSGS"))
    (make-package "SSL_MSGS"))
  (shadow 'LinearMotionInstant (find-package "SSL_MSGS")))
(unless (find-package "SSL_MSGS::LINEARMOTIONINSTANT")
  (make-package "SSL_MSGS::LINEARMOTIONINSTANT"))

(in-package "ROS")
;;//! \htmlinclude LinearMotionInstant.msg.html


(defclass ssl_msgs::LinearMotionInstant
  :super ros::object
  :slots (_pos _vel ))

(defmethod ssl_msgs::LinearMotionInstant
  (:init
   (&key
    ((:pos __pos) (instance ssl_msgs::point_2d :init))
    ((:vel __vel) (instance ssl_msgs::point_2d :init))
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _vel __vel)
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:serialization-length
   ()
   (+
    ;; ssl_msgs/point_2d _pos
    (send _pos :serialization-length)
    ;; ssl_msgs/point_2d _vel
    (send _vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ssl_msgs/point_2d _pos
       (send _pos :serialize s)
     ;; ssl_msgs/point_2d _vel
       (send _vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ssl_msgs/point_2d _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; ssl_msgs/point_2d _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;;
   self)
  )

(setf (get ssl_msgs::LinearMotionInstant :md5sum-) "7676e8ef895f61056ed15bdab6d0319e")
(setf (get ssl_msgs::LinearMotionInstant :datatype-) "ssl_msgs/LinearMotionInstant")
(setf (get ssl_msgs::LinearMotionInstant :definition-)
      "point_2d pos
point_2d vel

================================================================================
MSG: ssl_msgs/point_2d
float64 x
float64 y

")



(provide :ssl_msgs/LinearMotionInstant "7676e8ef895f61056ed15bdab6d0319e")


