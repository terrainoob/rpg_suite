class DiceRoller
  attr :tree
  attr :natural_one
  attr :natural_twenty

  def initialize(expression = nil)
    @natural_one = false
    @natural_twenty = false
    expression ||= DiceBag::DefaultRoll
    @tree = DiceBag.parse(expression)
  end

  def result
    self.roll
  end

  def roll
    total = 0
    self.tree.each do |op, part|
      if part.is_a?(RollPart)
        total += part.roll()
        @natural_one = part.natural_one
        @natural_twenty = part.natural_twenty
      else
        case op
        when :add
          total += part.value
        when :sub
          total -= part.value
        when :mul
          total *= part.value
        when :div
          total /= part.value
        end
      end
      total = 1 if total < 1
    end
    return total
  end
end