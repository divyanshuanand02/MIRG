
(cl:in-package :asdf)

(defsystem "ssl_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "path" :depends-on ("_package_path"))
    (:file "_package_path" :depends-on ("_package"))
    (:file "point_2d" :depends-on ("_package_point_2d"))
    (:file "_package_point_2d" :depends-on ("_package"))
  ))