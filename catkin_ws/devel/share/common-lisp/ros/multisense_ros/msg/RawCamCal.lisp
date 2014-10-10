; Auto-generated. Do not edit!


(cl:in-package multisense_ros-msg)


;//! \htmlinclude RawCamCal.msg.html

(cl:defclass <RawCamCal> (roslisp-msg-protocol:ros-message)
  ((left_M
    :reader left_M
    :initarg :left_M
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (left_D
    :reader left_D
    :initarg :left_D
    :type (cl:vector cl:float)
   :initform (cl:make-array 8 :element-type 'cl:float :initial-element 0.0))
   (left_R
    :reader left_R
    :initarg :left_R
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (left_P
    :reader left_P
    :initarg :left_P
    :type (cl:vector cl:float)
   :initform (cl:make-array 12 :element-type 'cl:float :initial-element 0.0))
   (right_M
    :reader right_M
    :initarg :right_M
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (right_D
    :reader right_D
    :initarg :right_D
    :type (cl:vector cl:float)
   :initform (cl:make-array 8 :element-type 'cl:float :initial-element 0.0))
   (right_R
    :reader right_R
    :initarg :right_R
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (right_P
    :reader right_P
    :initarg :right_P
    :type (cl:vector cl:float)
   :initform (cl:make-array 12 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RawCamCal (<RawCamCal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawCamCal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawCamCal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multisense_ros-msg:<RawCamCal> is deprecated: use multisense_ros-msg:RawCamCal instead.")))

(cl:ensure-generic-function 'left_M-val :lambda-list '(m))
(cl:defmethod left_M-val ((m <RawCamCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:left_M-val is deprecated.  Use multisense_ros-msg:left_M instead.")
  (left_M m))

(cl:ensure-generic-function 'left_D-val :lambda-list '(m))
(cl:defmethod left_D-val ((m <RawCamCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:left_D-val is deprecated.  Use multisense_ros-msg:left_D instead.")
  (left_D m))

(cl:ensure-generic-function 'left_R-val :lambda-list '(m))
(cl:defmethod left_R-val ((m <RawCamCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:left_R-val is deprecated.  Use multisense_ros-msg:left_R instead.")
  (left_R m))

(cl:ensure-generic-function 'left_P-val :lambda-list '(m))
(cl:defmethod left_P-val ((m <RawCamCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:left_P-val is deprecated.  Use multisense_ros-msg:left_P instead.")
  (left_P m))

(cl:ensure-generic-function 'right_M-val :lambda-list '(m))
(cl:defmethod right_M-val ((m <RawCamCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:right_M-val is deprecated.  Use multisense_ros-msg:right_M instead.")
  (right_M m))

(cl:ensure-generic-function 'right_D-val :lambda-list '(m))
(cl:defmethod right_D-val ((m <RawCamCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:right_D-val is deprecated.  Use multisense_ros-msg:right_D instead.")
  (right_D m))

(cl:ensure-generic-function 'right_R-val :lambda-list '(m))
(cl:defmethod right_R-val ((m <RawCamCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:right_R-val is deprecated.  Use multisense_ros-msg:right_R instead.")
  (right_R m))

(cl:ensure-generic-function 'right_P-val :lambda-list '(m))
(cl:defmethod right_P-val ((m <RawCamCal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:right_P-val is deprecated.  Use multisense_ros-msg:right_P instead.")
  (right_P m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawCamCal>) ostream)
  "Serializes a message object of type '<RawCamCal>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_M))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_D))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_R))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_P))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_M))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_D))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_R))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_P))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawCamCal>) istream)
  "Deserializes a message object of type '<RawCamCal>"
  (cl:setf (cl:slot-value msg 'left_M) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'left_M)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'left_D) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'left_D)))
    (cl:dotimes (i 8)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'left_R) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'left_R)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'left_P) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'left_P)))
    (cl:dotimes (i 12)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'right_M) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'right_M)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'right_D) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'right_D)))
    (cl:dotimes (i 8)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'right_R) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'right_R)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'right_P) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'right_P)))
    (cl:dotimes (i 12)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawCamCal>)))
  "Returns string type for a message object of type '<RawCamCal>"
  "multisense_ros/RawCamCal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawCamCal)))
  "Returns string type for a message object of type 'RawCamCal"
  "multisense_ros/RawCamCal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawCamCal>)))
  "Returns md5sum for a message object of type '<RawCamCal>"
  "1b8c86de8eb033489e8e49fb5532702e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawCamCal)))
  "Returns md5sum for a message object of type 'RawCamCal"
  "1b8c86de8eb033489e8e49fb5532702e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawCamCal>)))
  "Returns full string definition for message of type '<RawCamCal>"
  (cl:format cl:nil "float32[9]  left_M~%float32[8]  left_D~%float32[9]  left_R~%float32[12] left_P~%float32[9]  right_M~%float32[8]  right_D~%float32[9]  right_R~%float32[12] right_P~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawCamCal)))
  "Returns full string definition for message of type 'RawCamCal"
  (cl:format cl:nil "float32[9]  left_M~%float32[8]  left_D~%float32[9]  left_R~%float32[12] left_P~%float32[9]  right_M~%float32[8]  right_D~%float32[9]  right_R~%float32[12] right_P~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawCamCal>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_M) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_R) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_P) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_M) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_R) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_P) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawCamCal>))
  "Converts a ROS message object to a list"
  (cl:list 'RawCamCal
    (cl:cons ':left_M (left_M msg))
    (cl:cons ':left_D (left_D msg))
    (cl:cons ':left_R (left_R msg))
    (cl:cons ':left_P (left_P msg))
    (cl:cons ':right_M (right_M msg))
    (cl:cons ':right_D (right_D msg))
    (cl:cons ':right_R (right_R msg))
    (cl:cons ':right_P (right_P msg))
))
