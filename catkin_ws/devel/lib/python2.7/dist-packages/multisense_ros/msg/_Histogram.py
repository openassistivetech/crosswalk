"""autogenerated by genpy from multisense_ros/Histogram.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class Histogram(genpy.Message):
  _md5sum = "e45112edc9190cff95413a65cb22f694"
  _type = "multisense_ros/Histogram"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64    frame_count
time     time_stamp
uint32   width
uint32   height
float32  gain
float32  fps
uint32   exposure_time
uint32   channels
uint32   bins
uint32[] data

"""
  __slots__ = ['frame_count','time_stamp','width','height','gain','fps','exposure_time','channels','bins','data']
  _slot_types = ['int64','time','uint32','uint32','float32','float32','uint32','uint32','uint32','uint32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frame_count,time_stamp,width,height,gain,fps,exposure_time,channels,bins,data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Histogram, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.frame_count is None:
        self.frame_count = 0
      if self.time_stamp is None:
        self.time_stamp = genpy.Time()
      if self.width is None:
        self.width = 0
      if self.height is None:
        self.height = 0
      if self.gain is None:
        self.gain = 0.
      if self.fps is None:
        self.fps = 0.
      if self.exposure_time is None:
        self.exposure_time = 0
      if self.channels is None:
        self.channels = 0
      if self.bins is None:
        self.bins = 0
      if self.data is None:
        self.data = []
    else:
      self.frame_count = 0
      self.time_stamp = genpy.Time()
      self.width = 0
      self.height = 0
      self.gain = 0.
      self.fps = 0.
      self.exposure_time = 0
      self.channels = 0
      self.bins = 0
      self.data = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_q4I2f3I.pack(_x.frame_count, _x.time_stamp.secs, _x.time_stamp.nsecs, _x.width, _x.height, _x.gain, _x.fps, _x.exposure_time, _x.channels, _x.bins))
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(struct.pack(pattern, *self.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.time_stamp is None:
        self.time_stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 44
      (_x.frame_count, _x.time_stamp.secs, _x.time_stamp.nsecs, _x.width, _x.height, _x.gain, _x.fps, _x.exposure_time, _x.channels, _x.bins,) = _struct_q4I2f3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.data = struct.unpack(pattern, str[start:end])
      self.time_stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_q4I2f3I.pack(_x.frame_count, _x.time_stamp.secs, _x.time_stamp.nsecs, _x.width, _x.height, _x.gain, _x.fps, _x.exposure_time, _x.channels, _x.bins))
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(self.data.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.time_stamp is None:
        self.time_stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 44
      (_x.frame_count, _x.time_stamp.secs, _x.time_stamp.nsecs, _x.width, _x.height, _x.gain, _x.fps, _x.exposure_time, _x.channels, _x.bins,) = _struct_q4I2f3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.data = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
      self.time_stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_q4I2f3I = struct.Struct("<q4I2f3I")
