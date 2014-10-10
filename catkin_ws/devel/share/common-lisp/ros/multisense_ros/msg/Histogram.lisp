; Auto-generated. Do not edit!


(cl:in-package multisense_ros-msg)


;//! \htmlinclude Histogram.msg.html

(cl:defclass <Histogram> (roslisp-msg-protocol:ros-message)
  ((frame_count
    :reader frame_count
    :initarg :frame_count
    :type cl:integer
    :initform 0)
   (time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (gain
    :reader gain
    :initarg :gain
    :type cl:float
    :initform 0.0)
   (fps
    :reader fps
    :initarg :fps
    :type cl:float
    :initform 0.0)
   (exposure_time
    :reader exposure_time
    :initarg :exposure_time
    :type cl:integer
    :initform 0)
   (channels
    :reader channels
    :initarg :channels
    :type cl:integer
    :initform 0)
   (bins
    :reader bins
    :initarg :bins
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Histogram (<Histogram>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Histogram>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Histogram)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multisense_ros-msg:<Histogram> is deprecated: use multisense_ros-msg:Histogram instead.")))

(cl:ensure-generic-function 'frame_count-val :lambda-list '(m))
(cl:defmethod frame_count-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:frame_count-val is deprecated.  Use multisense_ros-msg:frame_count instead.")
  (frame_count m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:time_stamp-val is deprecated.  Use multisense_ros-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:width-val is deprecated.  Use multisense_ros-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:height-val is deprecated.  Use multisense_ros-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:gain-val is deprecated.  Use multisense_ros-msg:gain instead.")
  (gain m))

(cl:ensure-generic-function 'fps-val :lambda-list '(m))
(cl:defmethod fps-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:fps-val is deprecated.  Use multisense_ros-msg:fps instead.")
  (fps m))

(cl:ensure-generic-function 'exposure_time-val :lambda-list '(m))
(cl:defmethod exposure_time-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:exposure_time-val is deprecated.  Use multisense_ros-msg:exposure_time instead.")
  (exposure_time m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:channels-val is deprecated.  Use multisense_ros-msg:channels instead.")
  (channels m))

(cl:ensure-generic-function 'bins-val :lambda-list '(m))
(cl:defmethod bins-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:bins-val is deprecated.  Use multisense_ros-msg:bins instead.")
  (bins m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:data-val is deprecated.  Use multisense_ros-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Histogram>) ostream)
  "Serializes a message object of type '<Histogram>"
  (cl:let* ((signed (cl:slot-value msg 'frame_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exposure_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exposure_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exposure_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'channels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'channels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'channels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bins)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Histogram>) istream)
  "Deserializes a message object of type '<Histogram>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exposure_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exposure_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exposure_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'channels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'channels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'channels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bins)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Histogram>)))
  "Returns string type for a message object of type '<Histogram>"
  "multisense_ros/Histogram")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Histogram)))
  "Returns string type for a message object of type 'Histogram"
  "multisense_ros/Histogram")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Histogram>)))
  "Returns md5sum for a message object of type '<Histogram>"
  "e45112edc9190cff95413a65cb22f694")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Histogram)))
  "Returns md5sum for a message object of type 'Histogram"
  "e45112edc9190cff95413a65cb22f694")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Histogram>)))
  "Returns full string definition for message of type '<Histogram>"
  (cl:format cl:nil "int64    frame_count~%time     time_stamp~%uint32   width~%uint32   height~%float32  gain~%float32  fps~%uint32   exposure_time~%uint32   channels~%uint32   bins~%uint32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Histogram)))
  "Returns full string definition for message of type 'Histogram"
  (cl:format cl:nil "int64    frame_count~%time     time_stamp~%uint32   width~%uint32   height~%float32  gain~%float32  fps~%uint32   exposure_time~%uint32   channels~%uint32   bins~%uint32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Histogram>))
  (cl:+ 0
     8
     8
     4
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Histogram>))
  "Converts a ROS message object to a list"
  (cl:list 'Histogram
    (cl:cons ':frame_count (frame_count msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':gain (gain msg))
    (cl:cons ':fps (fps msg))
    (cl:cons ':exposure_time (exposure_time msg))
    (cl:cons ':channels (channels msg))
    (cl:cons ':bins (bins msg))
    (cl:cons ':data (data msg))
))
