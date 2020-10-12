
(cl:in-package :asdf)

(defsystem "ssl_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DynamicObstacle" :depends-on ("_package_DynamicObstacle"))
    (:file "_package_DynamicObstacle" :depends-on ("_package"))
    (:file "LinearMotionInstant" :depends-on ("_package_LinearMotionInstant"))
    (:file "_package_LinearMotionInstant" :depends-on ("_package"))
    (:file "MotionConstraints" :depends-on ("_package_MotionConstraints"))
    (:file "_package_MotionConstraints" :depends-on ("_package"))
    (:file "RobotInstant" :depends-on ("_package_RobotInstant"))
    (:file "_package_RobotInstant" :depends-on ("_package"))
    (:file "StaticObstacle" :depends-on ("_package_StaticObstacle"))
    (:file "_package_StaticObstacle" :depends-on ("_package"))
    (:file "path_plan" :depends-on ("_package_path_plan"))
    (:file "_package_path_plan" :depends-on ("_package"))
    (:file "point_2d" :depends-on ("_package_point_2d"))
    (:file "_package_point_2d" :depends-on ("_package"))
    (:file "trajectory" :depends-on ("_package_trajectory"))
    (:file "_package_trajectory" :depends-on ("_package"))
  ))