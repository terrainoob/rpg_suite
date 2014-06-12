  class RollPart < SimplePart

    attr :count
    attr :sides
    attr :parts
    attr :natural_one
    attr :natural_twenty

    def initialize(part)
      @natural_one = false
      @natural_twenty = false
      @total = nil
      @tally = []
      @value = part
      @count = part[:count]
      @sides = part[:sides]
    end

    def roll
      @total = 0
      roll = 0
      self.count.times do
        roll = self.roll_die
        @total += roll
      end
      @natural_twenty = roll == 20 && self.count == 1
      @natural_one = roll == 1 && self.count == 1
      @total
    end

    def roll_die
      num = rand(self.sides) + 1
    end
end