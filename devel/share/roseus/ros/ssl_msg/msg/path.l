;; Auto-generated. Do not edit!


(when (boundp 'ssl_msg::path)
  (if (not (find-package "SSL_MSG"))
    (make-package "SSL_MSG"))
  (shadow 'path (find-package "SSL_MSG")))
(unless (find-package "SSL_MSG::PATH")
  (make-package "SSL_MSG::PATH"))

(in-package "ROS")
;;//! \htmlinclude path.msg.html


(defclass ssl_msg::path
  :super ros::object
  :slots (_bot_id _avoid_ball ))

(defmethod ssl_msg::path
  (:init
   (&key
    ((:bot_id __bot_id) 0)
    ((:avoid_ball __avoid_ball) nil)
    )
   (send-super :init)
   (setq _bot_id (round __bot_id))
   (setq _avoid_ball __avoid_ball)
   self)
  (:bot_id
   (&optional __bot_id)
   (if __bot_id (setq _bot_id __bot_id)) _bot_id)
  (:avoid_ball
   (&optional __avoid_ball)
   (if __avoid_ball (setq _avoid_ball __avoid_ball)) _avoid_ball)
  (:serialization-length
   ()
   (+
    ;; uint8 _bot_id
    1
    ;; bool _avoid_ball
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _bot_id
       (write-byte _bot_id s)
     ;; bool _avoid_ball
       (if _avoid_ball (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _bot_id
     (setq _bot_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _avoid_ball
     (setq _avoid_ball (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ssl_msg::path :md5sum-) "6b290706c1e9391a3b799a706b62cb02")
(setf (get ssl_msg::path :datatype-) "ssl_msg/path")
(setf (get ssl_msg::path :definition-)
      "uint8 bot_id
bool avoid_ball

")



(provide :ssl_msg/path "6b290706c1e9391a3b799a706b62cb02")


