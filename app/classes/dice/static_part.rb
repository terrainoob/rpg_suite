class StaticPart < SimplePart
  def initialize(num)
    num = num.to_i() if num.is_a?(String)
    @value = num
  end

  def total
    return self.value
  end

  def to_s
    return self.value.to_s()
  end
end

