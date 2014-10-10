; Auto-generated. Do not edit!


(cl:in-package multisense_ros-msg)


;//! \htmlinclude RawLidarCal.msg.html

(cl:defclass <RawLidarCal> (roslisp-msg-protocol:ros-message)
  ((laserToSpindle
    :reader laserToSpindle
    :initarg :laserToSpindle
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0))
   (cameraToSpindleFixed
    :reader cameraToSpindleFixed
    :initarg :cameraToSpindleFixed
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RawLidarCal (<RawLidarCal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawLidarCal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawLidarCal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multisense_ros-msg:<RawLidarCal> is deprecated: use multisense_ros-msg:RawLidarCal instead.")))

(cl:ensure-generic-function 'laserToSpindle-val :lambda-list '(m))
(cl:defmethod laserToSpindle-val ((m <RawLidarCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:laserToSpindle-val is deprecated.  Use multisense_ros-msg:laserToSpindle instead.")
  (laserToSpindle m))

(cl:ensure-generic-function 'cameraToSpindleFixed-val :lambda-list '(m))
(cl:defmethod cameraToSpindleFixed-val ((m <RawLidarCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:cameraToSpindleFixed-val is deprecated.  Use multisense_ros-msg:cameraToSpindleFixed instead.")
  (cameraToSpindleFixed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawLidarCal>) ostream)
  "Serializes a message object of type '<RawLidarCal>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'laserToSpindle))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cameraToSpindleFixed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawLidarCal>) istream)
  "Deserializes a message object of type '<RawLidarCal>"
  (cl:setf (cl:slot-value msg 'laserToSpindle) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'laserToSpindle)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'cameraToSpindleFixed) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'cameraToSpindleFixed)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawLidarCal>)))
  "Returns string type for a message object of type '<RawLidarCal>"
  "multisense_ros/RawLidarCal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawLidarCal)))
  "Returns string type for a message object of type 'RawLidarCal"
  "multisense_ros/RawLidarCal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawLidarCal>)))
  "Returns md5sum for a message object of type '<RawLidarCal>"
  "a40a2eda974181d5f5f21ff840e3a6ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawLidarCal)))
  "Returns md5sum for a message object of type 'RawLidarCal"
  "a40a2eda974181d5f5f21ff840e3a6ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawLidarCal>)))
  "Returns full string definition for message of type '<RawLidarCal>"
  (cl:format cl:nil "float32[16] laserToSpindle~%float32[16] cameraToSpindleFixed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawLidarCal)))
  "Returns full string definition for message of type 'RawLidarCal"
  (cl:format cl:nil "float32[16] laserToSpindle~%float32[16] cameraToSpindleFixed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawLidarCal>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'laserToSpindle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cameraToSpindleFixed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawLidarCal>))
  "Converts a ROS message object to a list"
  (cl:list 'RawLidarCal
    (cl:cons ':laserToSpindle (laserToSpindle msg))
    (cl:cons ':cameraToSpindleFixed (cameraToSpindleFixed msg))
))
