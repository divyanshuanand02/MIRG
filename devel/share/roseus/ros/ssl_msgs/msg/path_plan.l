;; Auto-generated. Do not edit!


(when (boundp 'ssl_msgs::path_plan)
  (if (not (find-package "SSL_MSGS"))
    (make-package "SSL_MSGS"))
  (shadow 'path_plan (find-package "SSL_MSGS")))
(unless (find-package "SSL_MSGS::PATH_PLAN")
  (make-package "SSL_MSGS::PATH_PLAN"))

(in-package "ROS")
;;//! \htmlinclude path_plan.msg.html


(defclass ssl_msgs::path_plan
  :super ros::object
  :slots (_start _goal _m_c _startTime _dynamic_obstacle _static_obstacle _biasWaypoints ))

(defmethod ssl_msgs::path_plan
  (:init
   (&key
    ((:start __start) (instance ssl_msgs::LinearMotionInstant :init))
    ((:goal __goal) (instance ssl_msgs::LinearMotionInstant :init))
    ((:m_c __m_c) (instance ssl_msgs::MotionConstraints :init))
    ((:startTime __startTime) (instance ros::time :init))
    ((:dynamic_obstacle __dynamic_obstacle) (let (r) (dotimes (i 0) (push (instance ssl_msgs::DynamicObstacle :init) r)) r))
    ((:static_obstacle __static_obstacle) (let (r) (dotimes (i 0) (push (instance ssl_msgs::StaticObstacle :init) r)) r))
    ((:biasWaypoints __biasWaypoints) (instance ssl_msgs::point_2d :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _goal __goal)
   (setq _m_c __m_c)
   (setq _startTime __startTime)
   (setq _dynamic_obstacle __dynamic_obstacle)
   (setq _static_obstacle __static_obstacle)
   (setq _biasWaypoints __biasWaypoints)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:m_c
   (&rest __m_c)
   (if (keywordp (car __m_c))
       (send* _m_c __m_c)
     (progn
       (if __m_c (setq _m_c (car __m_c)))
       _m_c)))
  (:startTime
   (&optional __startTime)
   (if __startTime (setq _startTime __startTime)) _startTime)
  (:dynamic_obstacle
   (&rest __dynamic_obstacle)
   (if (keywordp (car __dynamic_obstacle))
       (send* _dynamic_obstacle __dynamic_obstacle)
     (progn
       (if __dynamic_obstacle (setq _dynamic_obstacle (car __dynamic_obstacle)))
       _dynamic_obstacle)))
  (:static_obstacle
   (&rest __static_obstacle)
   (if (keywordp (car __static_obstacle))
       (send* _static_obstacle __static_obstacle)
     (progn
       (if __static_obstacle (setq _static_obstacle (car __static_obstacle)))
       _static_obstacle)))
  (:biasWaypoints
   (&rest __biasWaypoints)
   (if (keywordp (car __biasWaypoints))
       (send* _biasWaypoints __biasWaypoints)
     (progn
       (if __biasWaypoints (setq _biasWaypoints (car __biasWaypoints)))
       _biasWaypoints)))
  (:serialization-length
   ()
   (+
    ;; ssl_msgs/LinearMotionInstant _start
    (send _start :serialization-length)
    ;; ssl_msgs/LinearMotionInstant _goal
    (send _goal :serialization-length)
    ;; ssl_msgs/MotionConstraints _m_c
    (send _m_c :serialization-length)
    ;; time _startTime
    8
    ;; ssl_msgs/DynamicObstacle[] _dynamic_obstacle
    (apply #'+ (send-all _dynamic_obstacle :serialization-length)) 4
    ;; ssl_msgs/StaticObstacle[] _static_obstacle
    (apply #'+ (send-all _static_obstacle :serialization-length)) 4
    ;; ssl_msgs/point_2d _biasWaypoints
    (send _biasWaypoints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ssl_msgs/LinearMotionInstant _start
       (send _start :serialize s)
     ;; ssl_msgs/LinearMotionInstant _goal
       (send _goal :serialize s)
     ;; ssl_msgs/MotionConstraints _m_c
       (send _m_c :serialize s)
     ;; time _startTime
       (write-long (send _startTime :sec) s) (write-long (send _startTime :nsec) s)
     ;; ssl_msgs/DynamicObstacle[] _dynamic_obstacle
     (write-long (length _dynamic_obstacle) s)
     (dolist (elem _dynamic_obstacle)
       (send elem :serialize s)
       )
     ;; ssl_msgs/StaticObstacle[] _static_obstacle
     (write-long (length _static_obstacle) s)
     (dolist (elem _static_obstacle)
       (send elem :serialize s)
       )
     ;; ssl_msgs/point_2d _biasWaypoints
       (send _biasWaypoints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ssl_msgs/LinearMotionInstant _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; ssl_msgs/LinearMotionInstant _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; ssl_msgs/MotionConstraints _m_c
     (send _m_c :deserialize buf ptr-) (incf ptr- (send _m_c :serialization-length))
   ;; time _startTime
     (send _startTime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _startTime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ssl_msgs/DynamicObstacle[] _dynamic_obstacle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dynamic_obstacle (let (r) (dotimes (i n) (push (instance ssl_msgs::DynamicObstacle :init) r)) r))
     (dolist (elem- _dynamic_obstacle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ssl_msgs/StaticObstacle[] _static_obstacle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _static_obstacle (let (r) (dotimes (i n) (push (instance ssl_msgs::StaticObstacle :init) r)) r))
     (dolist (elem- _static_obstacle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ssl_msgs/point_2d _biasWaypoints
     (send _biasWaypoints :deserialize buf ptr-) (incf ptr- (send _biasWaypoints :serialization-length))
   ;;
   self)
  )

(setf (get ssl_msgs::path_plan :md5sum-) "26d1898b37a0c391ab33fae4f5394b29")
(setf (get ssl_msgs::path_plan :datatype-) "ssl_msgs/path_plan")
(setf (get ssl_msgs::path_plan :definition-)
      "LinearMotionInstant start
LinearMotionInstant goal
MotionConstraints m_c
time startTime
DynamicObstacle[] dynamic_obstacle
StaticObstacle[] static_obstacle
point_2d biasWaypoints

================================================================================
MSG: ssl_msgs/LinearMotionInstant
point_2d pos
point_2d vel

================================================================================
MSG: ssl_msgs/point_2d
float64 x
float64 y

================================================================================
MSG: ssl_msgs/MotionConstraints
float64 max_speed
float64 max_acceleration

================================================================================
MSG: ssl_msgs/DynamicObstacle
point_2d pos
float64 radius


================================================================================
MSG: ssl_msgs/StaticObstacle
point_2d pos
float64 radius

")



(provide :ssl_msgs/path_plan "26d1898b37a0c391ab33fae4f5394b29")


