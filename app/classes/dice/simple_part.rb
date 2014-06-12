class SimplePart
  attr :value

  def initialize(part)
    @value = part
  end

  def result
    return @value
  end

  def to_s
    return @value
  end
end
