require 'spec_helper'

describe DiceRoller do
  it "returns a value between 1 and 4 for 'd4'" do
    roller = DiceRoller.new('d4')
    30.times do
      expect(roller.result).to be_between(1,4)
    end
  end

  it "returns a value between 1 and 6 for 'd6'" do
    roller = DiceRoller.new('d6')
    30.times do
      expect(roller.result).to be_between(1,6)
    end
  end

  it "defaults to d6 if no expression is passed in" do
    roller = DiceRoller.new
    30.times do
      expect(roller.result).to be_between(1,6)
    end
  end

  it "can roll multiple dice at once" do
    roller = DiceRoller.new('4d4')
    30.times do
      expect(roller.result).to be_between(4,16)
    end
  end

  it "always rolls at least one die" do
    roller = DiceRoller.new('0d4')
    expect(roller.result).to be_between(1,4)
  end

  it "won't allow the result to be less than one" do
    roller = DiceRoller.new('d4 - 5')
    expect(roller.result).to eq 1
  end

  it "can add arbitrary amounts to the roll" do
    roller = DiceRoller.new('d6 + 3')
    30.times do
      expect(roller.result).to be_between(3,9)
    end
  end

  it "can subtract arbitrary amounts to the roll" do
    roller = DiceRoller.new('d6 - 1')
    30.times do
      expect(roller.result).to be_between(1,5)
    end
  end

  it "can multiply the result by an arbitrary amount" do
    roller = DiceRoller.new('d6 * 10')
    30.times do
      expect(roller.result).to be_between(10,60)
    end
  end

  it "can divide the result by an arbitrary amount" do
    roller = DiceRoller.new('4d6 / 2')
    30.times do
      expect(roller.result).to be_between(2,12)
    end
  end

  it "always returns an integer when dividing" do
    roller = DiceRoller.new('3d6 / 2')
    30.times do
      result = roller.result
      expect(result).to be_between(2,12)
      expect(result).to be_kind_of(Integer)
    end
  end

  it "indicates a natural 1" do
    roller = DiceRoller.new('d1')
    expect(roller.natural_one).to be_falsey
    result = roller.result
    expect(result).to eq 1
    expect(roller.natural_one).to be_truthy
  end

  it "indicates a natural 20" do
    roller = DiceRoller.new('d20')
    expect(roller.natural_twenty).to be_falsey
    result = 0
    rolls = 0 #this prevents a runaway loop
    until result == 20 || rolls > 500 do
      result = roller.result
      rolls += 1
    end
    expect(roller.natural_twenty).to be_truthy
  end

  it "can handle multiple die types in one expression" do
    roller = DiceRoller.new('d6 + 2d4')
    30.times do
      result = roller.result
      expect(result).to be_between(3,14)
    end
  end

  it "can handle complex expressions" do
    roller = DiceRoller.new('2d6 + 1 + 4d4 * 10')
    30.times do
      expect(roller.result).to be_between(70,290)
    end
  end
end