class String
  def to_md5
    Digest::MD5.hexdigest(self)
  end

  def to_sha1
    Digest::SHA1.hexdigest(self)
  end
  
  alias_method :strip_old, :strip
  def strip(char=" ")
    return strip_old if char == nil
    new_str = ""
    buff = ""
    state = :start
    self.each_byte do |byte|
      state = :middle if state == :start and byte.chr != char

      if state == :middle and byte.chr == char
        buff < 0
        new_str += buff
        buff = ""
      end

      new_str << byte.chr
    end

    new_str
  end
end




