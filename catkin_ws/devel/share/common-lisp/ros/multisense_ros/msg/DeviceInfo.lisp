; Auto-generated. Do not edit!


(cl:in-package multisense_ros-msg)


;//! \htmlinclude DeviceInfo.msg.html

(cl:defclass <DeviceInfo> (roslisp-msg-protocol:ros-message)
  ((deviceName
    :reader deviceName
    :initarg :deviceName
    :type cl:string
    :initform "")
   (buildDate
    :reader buildDate
    :initarg :buildDate
    :type cl:string
    :initform "")
   (serialNumber
    :reader serialNumber
    :initarg :serialNumber
    :type cl:string
    :initform "")
   (deviceRevision
    :reader deviceRevision
    :initarg :deviceRevision
    :type cl:integer
    :initform 0)
   (numberOfPcbs
    :reader numberOfPcbs
    :initarg :numberOfPcbs
    :type cl:integer
    :initform 0)
   (pcbSerialNumbers
    :reader pcbSerialNumbers
    :initarg :pcbSerialNumbers
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (pcbNames
    :reader pcbNames
    :initarg :pcbNames
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (imagerName
    :reader imagerName
    :initarg :imagerName
    :type cl:string
    :initform "")
   (imagerType
    :reader imagerType
    :initarg :imagerType
    :type cl:integer
    :initform 0)
   (imagerWidth
    :reader imagerWidth
    :initarg :imagerWidth
    :type cl:integer
    :initform 0)
   (imagerHeight
    :reader imagerHeight
    :initarg :imagerHeight
    :type cl:integer
    :initform 0)
   (lensName
    :reader lensName
    :initarg :lensName
    :type cl:string
    :initform "")
   (lensType
    :reader lensType
    :initarg :lensType
    :type cl:integer
    :initform 0)
   (nominalBaseline
    :reader nominalBaseline
    :initarg :nominalBaseline
    :type cl:float
    :initform 0.0)
   (nominalFocalLength
    :reader nominalFocalLength
    :initarg :nominalFocalLength
    :type cl:float
    :initform 0.0)
   (nominalRelativeAperture
    :reader nominalRelativeAperture
    :initarg :nominalRelativeAperture
    :type cl:float
    :initform 0.0)
   (lightingType
    :reader lightingType
    :initarg :lightingType
    :type cl:integer
    :initform 0)
   (numberOfLights
    :reader numberOfLights
    :initarg :numberOfLights
    :type cl:integer
    :initform 0)
   (laserName
    :reader laserName
    :initarg :laserName
    :type cl:string
    :initform "")
   (laserType
    :reader laserType
    :initarg :laserType
    :type cl:integer
    :initform 0)
   (motorName
    :reader motorName
    :initarg :motorName
    :type cl:string
    :initform "")
   (motorType
    :reader motorType
    :initarg :motorType
    :type cl:integer
    :initform 0)
   (motorGearReduction
    :reader motorGearReduction
    :initarg :motorGearReduction
    :type cl:float
    :initform 0.0)
   (apiBuildDate
    :reader apiBuildDate
    :initarg :apiBuildDate
    :type cl:string
    :initform "")
   (apiVersion
    :reader apiVersion
    :initarg :apiVersion
    :type cl:fixnum
    :initform 0)
   (firmwareBuildDate
    :reader firmwareBuildDate
    :initarg :firmwareBuildDate
    :type cl:string
    :initform "")
   (firmwareVersion
    :reader firmwareVersion
    :initarg :firmwareVersion
    :type cl:fixnum
    :initform 0)
   (bitstreamVersion
    :reader bitstreamVersion
    :initarg :bitstreamVersion
    :type cl:integer
    :initform 0)
   (bitstreamMagic
    :reader bitstreamMagic
    :initarg :bitstreamMagic
    :type cl:integer
    :initform 0)
   (fpgaDna
    :reader fpgaDna
    :initarg :fpgaDna
    :type cl:integer
    :initform 0))
)

(cl:defclass DeviceInfo (<DeviceInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeviceInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeviceInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multisense_ros-msg:<DeviceInfo> is deprecated: use multisense_ros-msg:DeviceInfo instead.")))

(cl:ensure-generic-function 'deviceName-val :lambda-list '(m))
(cl:defmethod deviceName-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:deviceName-val is deprecated.  Use multisense_ros-msg:deviceName instead.")
  (deviceName m))

(cl:ensure-generic-function 'buildDate-val :lambda-list '(m))
(cl:defmethod buildDate-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:buildDate-val is deprecated.  Use multisense_ros-msg:buildDate instead.")
  (buildDate m))

(cl:ensure-generic-function 'serialNumber-val :lambda-list '(m))
(cl:defmethod serialNumber-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:serialNumber-val is deprecated.  Use multisense_ros-msg:serialNumber instead.")
  (serialNumber m))

(cl:ensure-generic-function 'deviceRevision-val :lambda-list '(m))
(cl:defmethod deviceRevision-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:deviceRevision-val is deprecated.  Use multisense_ros-msg:deviceRevision instead.")
  (deviceRevision m))

(cl:ensure-generic-function 'numberOfPcbs-val :lambda-list '(m))
(cl:defmethod numberOfPcbs-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:numberOfPcbs-val is deprecated.  Use multisense_ros-msg:numberOfPcbs instead.")
  (numberOfPcbs m))

(cl:ensure-generic-function 'pcbSerialNumbers-val :lambda-list '(m))
(cl:defmethod pcbSerialNumbers-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:pcbSerialNumbers-val is deprecated.  Use multisense_ros-msg:pcbSerialNumbers instead.")
  (pcbSerialNumbers m))

(cl:ensure-generic-function 'pcbNames-val :lambda-list '(m))
(cl:defmethod pcbNames-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:pcbNames-val is deprecated.  Use multisense_ros-msg:pcbNames instead.")
  (pcbNames m))

(cl:ensure-generic-function 'imagerName-val :lambda-list '(m))
(cl:defmethod imagerName-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:imagerName-val is deprecated.  Use multisense_ros-msg:imagerName instead.")
  (imagerName m))

(cl:ensure-generic-function 'imagerType-val :lambda-list '(m))
(cl:defmethod imagerType-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:imagerType-val is deprecated.  Use multisense_ros-msg:imagerType instead.")
  (imagerType m))

(cl:ensure-generic-function 'imagerWidth-val :lambda-list '(m))
(cl:defmethod imagerWidth-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:imagerWidth-val is deprecated.  Use multisense_ros-msg:imagerWidth instead.")
  (imagerWidth m))

(cl:ensure-generic-function 'imagerHeight-val :lambda-list '(m))
(cl:defmethod imagerHeight-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:imagerHeight-val is deprecated.  Use multisense_ros-msg:imagerHeight instead.")
  (imagerHeight m))

(cl:ensure-generic-function 'lensName-val :lambda-list '(m))
(cl:defmethod lensName-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:lensName-val is deprecated.  Use multisense_ros-msg:lensName instead.")
  (lensName m))

(cl:ensure-generic-function 'lensType-val :lambda-list '(m))
(cl:defmethod lensType-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:lensType-val is deprecated.  Use multisense_ros-msg:lensType instead.")
  (lensType m))

(cl:ensure-generic-function 'nominalBaseline-val :lambda-list '(m))
(cl:defmethod nominalBaseline-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:nominalBaseline-val is deprecated.  Use multisense_ros-msg:nominalBaseline instead.")
  (nominalBaseline m))

(cl:ensure-generic-function 'nominalFocalLength-val :lambda-list '(m))
(cl:defmethod nominalFocalLength-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:nominalFocalLength-val is deprecated.  Use multisense_ros-msg:nominalFocalLength instead.")
  (nominalFocalLength m))

(cl:ensure-generic-function 'nominalRelativeAperture-val :lambda-list '(m))
(cl:defmethod nominalRelativeAperture-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:nominalRelativeAperture-val is deprecated.  Use multisense_ros-msg:nominalRelativeAperture instead.")
  (nominalRelativeAperture m))

(cl:ensure-generic-function 'lightingType-val :lambda-list '(m))
(cl:defmethod lightingType-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:lightingType-val is deprecated.  Use multisense_ros-msg:lightingType instead.")
  (lightingType m))

(cl:ensure-generic-function 'numberOfLights-val :lambda-list '(m))
(cl:defmethod numberOfLights-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:numberOfLights-val is deprecated.  Use multisense_ros-msg:numberOfLights instead.")
  (numberOfLights m))

(cl:ensure-generic-function 'laserName-val :lambda-list '(m))
(cl:defmethod laserName-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:laserName-val is deprecated.  Use multisense_ros-msg:laserName instead.")
  (laserName m))

(cl:ensure-generic-function 'laserType-val :lambda-list '(m))
(cl:defmethod laserType-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:laserType-val is deprecated.  Use multisense_ros-msg:laserType instead.")
  (laserType m))

(cl:ensure-generic-function 'motorName-val :lambda-list '(m))
(cl:defmethod motorName-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:motorName-val is deprecated.  Use multisense_ros-msg:motorName instead.")
  (motorName m))

(cl:ensure-generic-function 'motorType-val :lambda-list '(m))
(cl:defmethod motorType-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:motorType-val is deprecated.  Use multisense_ros-msg:motorType instead.")
  (motorType m))

(cl:ensure-generic-function 'motorGearReduction-val :lambda-list '(m))
(cl:defmethod motorGearReduction-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:motorGearReduction-val is deprecated.  Use multisense_ros-msg:motorGearReduction instead.")
  (motorGearReduction m))

(cl:ensure-generic-function 'apiBuildDate-val :lambda-list '(m))
(cl:defmethod apiBuildDate-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:apiBuildDate-val is deprecated.  Use multisense_ros-msg:apiBuildDate instead.")
  (apiBuildDate m))

(cl:ensure-generic-function 'apiVersion-val :lambda-list '(m))
(cl:defmethod apiVersion-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:apiVersion-val is deprecated.  Use multisense_ros-msg:apiVersion instead.")
  (apiVersion m))

(cl:ensure-generic-function 'firmwareBuildDate-val :lambda-list '(m))
(cl:defmethod firmwareBuildDate-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:firmwareBuildDate-val is deprecated.  Use multisense_ros-msg:firmwareBuildDate instead.")
  (firmwareBuildDate m))

(cl:ensure-generic-function 'firmwareVersion-val :lambda-list '(m))
(cl:defmethod firmwareVersion-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:firmwareVersion-val is deprecated.  Use multisense_ros-msg:firmwareVersion instead.")
  (firmwareVersion m))

(cl:ensure-generic-function 'bitstreamVersion-val :lambda-list '(m))
(cl:defmethod bitstreamVersion-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:bitstreamVersion-val is deprecated.  Use multisense_ros-msg:bitstreamVersion instead.")
  (bitstreamVersion m))

(cl:ensure-generic-function 'bitstreamMagic-val :lambda-list '(m))
(cl:defmethod bitstreamMagic-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:bitstreamMagic-val is deprecated.  Use multisense_ros-msg:bitstreamMagic instead.")
  (bitstreamMagic m))

(cl:ensure-generic-function 'fpgaDna-val :lambda-list '(m))
(cl:defmethod fpgaDna-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multisense_ros-msg:fpgaDna-val is deprecated.  Use multisense_ros-msg:fpgaDna instead.")
  (fpgaDna m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeviceInfo>) ostream)
  "Serializes a message object of type '<DeviceInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'deviceName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'deviceName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'buildDate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'buildDate))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serialNumber))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serialNumber))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceRevision)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'deviceRevision)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'deviceRevision)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'deviceRevision)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfPcbs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numberOfPcbs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numberOfPcbs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numberOfPcbs)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pcbSerialNumbers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'pcbSerialNumbers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pcbNames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'pcbNames))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'imagerName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'imagerName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imagerType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imagerType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imagerType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imagerType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imagerWidth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imagerWidth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imagerWidth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imagerWidth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imagerHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imagerHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imagerHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imagerHeight)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lensName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lensName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lensType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lensType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lensType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lensType)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nominalBaseline))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nominalFocalLength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nominalRelativeAperture))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lightingType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lightingType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lightingType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lightingType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfLights)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numberOfLights)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numberOfLights)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numberOfLights)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'laserName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'laserName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'laserType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'laserType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'laserType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'laserType)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motorName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motorName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motorType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motorType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'motorType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'motorType)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motorGearReduction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'apiBuildDate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'apiBuildDate))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'apiVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'apiVersion)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmwareBuildDate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmwareBuildDate))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'firmwareVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'firmwareVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bitstreamVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bitstreamVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bitstreamVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bitstreamVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'bitstreamVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'bitstreamVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'bitstreamVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'bitstreamVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bitstreamMagic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bitstreamMagic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bitstreamMagic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bitstreamMagic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'bitstreamMagic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'bitstreamMagic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'bitstreamMagic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'bitstreamMagic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fpgaDna)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fpgaDna)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fpgaDna)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fpgaDna)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'fpgaDna)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'fpgaDna)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'fpgaDna)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'fpgaDna)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeviceInfo>) istream)
  "Deserializes a message object of type '<DeviceInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deviceName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'deviceName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buildDate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'buildDate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serialNumber) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serialNumber) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceRevision)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'deviceRevision)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'deviceRevision)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'deviceRevision)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfPcbs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numberOfPcbs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numberOfPcbs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numberOfPcbs)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pcbSerialNumbers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pcbSerialNumbers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pcbNames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pcbNames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imagerName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'imagerName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imagerType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imagerType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imagerType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imagerType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imagerWidth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imagerWidth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imagerWidth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imagerWidth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imagerHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imagerHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imagerHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imagerHeight)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lensName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lensName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lensType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lensType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lensType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lensType)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nominalBaseline) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nominalFocalLength) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nominalRelativeAperture) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lightingType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lightingType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lightingType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lightingType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfLights)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numberOfLights)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numberOfLights)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numberOfLights)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laserName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'laserName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'laserType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'laserType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'laserType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'laserType)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motorName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motorType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motorType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'motorType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'motorType)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motorGearReduction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'apiBuildDate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'apiBuildDate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'apiVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'apiVersion)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmwareBuildDate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmwareBuildDate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'firmwareVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'firmwareVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bitstreamVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bitstreamVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bitstreamVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bitstreamVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'bitstreamVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'bitstreamVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'bitstreamVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'bitstreamVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bitstreamMagic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bitstreamMagic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bitstreamMagic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bitstreamMagic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'bitstreamMagic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'bitstreamMagic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'bitstreamMagic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'bitstreamMagic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fpgaDna)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fpgaDna)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fpgaDna)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fpgaDna)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'fpgaDna)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'fpgaDna)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'fpgaDna)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'fpgaDna)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeviceInfo>)))
  "Returns string type for a message object of type '<DeviceInfo>"
  "multisense_ros/DeviceInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeviceInfo)))
  "Returns string type for a message object of type 'DeviceInfo"
  "multisense_ros/DeviceInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeviceInfo>)))
  "Returns md5sum for a message object of type '<DeviceInfo>"
  "c6474ecff79a7f51e0a82ca43d0cf444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeviceInfo)))
  "Returns md5sum for a message object of type 'DeviceInfo"
  "c6474ecff79a7f51e0a82ca43d0cf444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeviceInfo>)))
  "Returns full string definition for message of type '<DeviceInfo>"
  (cl:format cl:nil "string deviceName~%string buildDate~%string serialNumber~%uint32 deviceRevision~%~%uint32    numberOfPcbs~%uint32[] pcbSerialNumbers~%string[] pcbNames~%~%string imagerName~%uint32 imagerType~%uint32 imagerWidth~%uint32 imagerHeight~%~%string lensName~%uint32 lensType~%float32 nominalBaseline~%float32 nominalFocalLength~%float32 nominalRelativeAperture~%~%uint32 lightingType~%uint32 numberOfLights~%~%string laserName~%uint32 laserType~%~%string motorName~%uint32 motorType~%float32 motorGearReduction~%~%string apiBuildDate~%uint16 apiVersion~%string firmwareBuildDate~%uint16 firmwareVersion~%~%uint64 bitstreamVersion~%uint64 bitstreamMagic~%uint64 fpgaDna~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeviceInfo)))
  "Returns full string definition for message of type 'DeviceInfo"
  (cl:format cl:nil "string deviceName~%string buildDate~%string serialNumber~%uint32 deviceRevision~%~%uint32    numberOfPcbs~%uint32[] pcbSerialNumbers~%string[] pcbNames~%~%string imagerName~%uint32 imagerType~%uint32 imagerWidth~%uint32 imagerHeight~%~%string lensName~%uint32 lensType~%float32 nominalBaseline~%float32 nominalFocalLength~%float32 nominalRelativeAperture~%~%uint32 lightingType~%uint32 numberOfLights~%~%string laserName~%uint32 laserType~%~%string motorName~%uint32 motorType~%float32 motorGearReduction~%~%string apiBuildDate~%uint16 apiVersion~%string firmwareBuildDate~%uint16 firmwareVersion~%~%uint64 bitstreamVersion~%uint64 bitstreamMagic~%uint64 fpgaDna~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeviceInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'deviceName))
     4 (cl:length (cl:slot-value msg 'buildDate))
     4 (cl:length (cl:slot-value msg 'serialNumber))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pcbSerialNumbers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pcbNames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'imagerName))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'lensName))
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'laserName))
     4
     4 (cl:length (cl:slot-value msg 'motorName))
     4
     4
     4 (cl:length (cl:slot-value msg 'apiBuildDate))
     2
     4 (cl:length (cl:slot-value msg 'firmwareBuildDate))
     2
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeviceInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DeviceInfo
    (cl:cons ':deviceName (deviceName msg))
    (cl:cons ':buildDate (buildDate msg))
    (cl:cons ':serialNumber (serialNumber msg))
    (cl:cons ':deviceRevision (deviceRevision msg))
    (cl:cons ':numberOfPcbs (numberOfPcbs msg))
    (cl:cons ':pcbSerialNumbers (pcbSerialNumbers msg))
    (cl:cons ':pcbNames (pcbNames msg))
    (cl:cons ':imagerName (imagerName msg))
    (cl:cons ':imagerType (imagerType msg))
    (cl:cons ':imagerWidth (imagerWidth msg))
    (cl:cons ':imagerHeight (imagerHeight msg))
    (cl:cons ':lensName (lensName msg))
    (cl:cons ':lensType (lensType msg))
    (cl:cons ':nominalBaseline (nominalBaseline msg))
    (cl:cons ':nominalFocalLength (nominalFocalLength msg))
    (cl:cons ':nominalRelativeAperture (nominalRelativeAperture msg))
    (cl:cons ':lightingType (lightingType msg))
    (cl:cons ':numberOfLights (numberOfLights msg))
    (cl:cons ':laserName (laserName msg))
    (cl:cons ':laserType (laserType msg))
    (cl:cons ':motorName (motorName msg))
    (cl:cons ':motorType (motorType msg))
    (cl:cons ':motorGearReduction (motorGearReduction msg))
    (cl:cons ':apiBuildDate (apiBuildDate msg))
    (cl:cons ':apiVersion (apiVersion msg))
    (cl:cons ':firmwareBuildDate (firmwareBuildDate msg))
    (cl:cons ':firmwareVersion (firmwareVersion msg))
    (cl:cons ':bitstreamVersion (bitstreamVersion msg))
    (cl:cons ':bitstreamMagic (bitstreamMagic msg))
    (cl:cons ':fpgaDna (fpgaDna msg))
))
