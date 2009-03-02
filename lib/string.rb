class String
  def to_md5
    Digest::MD5.hexdigest(self)
  end

  def to_sha1
    Digest::SHA1.hexdigest(self)
  end
  
  def strip(char = " ")
     new_str = ""
     self.each_byte do |byte|
        new_str << byte.chr unless byte.chr == char
     end
     new_str
  end
end
