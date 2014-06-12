require 'parslet'

class RollParser <  Parslet::Parser
  include Parslet

  rule(:space?)  { str(' ').repeat }
  #limit to 3 digits to prevent spamming
  rule(:number)  { match('[0-9]').repeat(1,3) }
  rule(:number?) { number.maybe }
  #count is the number of dice to roll. defaults to 1 if not included.
  rule(:count) { number?.as(:count) }
  #sides is the type of die to roll
  rule(:sides) { match('[dD]') >> number.as(:sides) }

  #rule(:xdx) { (count >> sides).as(:xdx) >> options? }
  rule(:xdx) { (count >> sides).as(:xdx) }

  #operators
  rule(:add) { str('+') }
  rule(:sub) { str('-') }
  rule(:mul) { str('*') }
  rule(:div) { str('/') }
  rule(:op)  { (add | sub | mul | div).as(:op) }

  # Part Rule
  # A part is an operator, followed by either an xDx
  # string or a static number value.
  rule(:part) do
    space? >>
    op >>
    space? >>
    (xdx | number).as(:value) >>
    space?
  end

  # All parts of a dice roll MUST start with an xDx
  # string and then followed by any optional parts.
  # The first xDx string is labeled as :start.
  rule(:parts) { xdx.as(:start) >> part.repeat }

  # A dice string is an optional label, followed by
  # the defined parts.
  #rule(:dice) { label.maybe >> parts }
  rule(:dice) { parts }

  root(:dice)
end