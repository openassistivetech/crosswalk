; Auto-generated. Do not edit!


(cl:in-package multisense_ros-msg)


;//! \htmlinclude RawImuData.msg.html

(cl:defclass <RawImuData> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass RawImuData (<RawImuData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawImuData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawImuData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multisense_ros-msg:<RawImuData> is deprecated: use multisense_ros-msg:RawImuData instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <RawImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:time_stamp-val is deprecated.  Use multisense_ros-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <RawImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:x-val is deprecated.  Use multisense_ros-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <RawImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:y-val is deprecated.  Use multisense_ros-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <RawImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:z-val is deprecated.  Use multisense_ros-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawImuData>) ostream)
  "Serializes a message object of type '<RawImuData>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_stamp) (cl:floor (cl:slot-value msg 'time_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawImuData>) istream)
  "Deserializes a message object of type '<RawImuData>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawImuData>)))
  "Returns string type for a message object of type '<RawImuData>"
  "multisense_ros/RawImuData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawImuData)))
  "Returns string type for a message object of type 'RawImuData"
  "multisense_ros/RawImuData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawImuData>)))
  "Returns md5sum for a message object of type '<RawImuData>"
  "bab971dfc7138ffa0d1374504403ac83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawImuData)))
  "Returns md5sum for a message object of type 'RawImuData"
  "bab971dfc7138ffa0d1374504403ac83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawImuData>)))
  "Returns full string definition for message of type '<RawImuData>"
  (cl:format cl:nil "time    time_stamp~%float32 x~%float32 y~%float32 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawImuData)))
  "Returns full string definition for message of type 'RawImuData"
  (cl:format cl:nil "time    time_stamp~%float32 x~%float32 y~%float32 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawImuData>))
  (cl:+ 0
     8
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawImuData>))
  "Converts a ROS message object to a list"
  (cl:list 'RawImuData
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
