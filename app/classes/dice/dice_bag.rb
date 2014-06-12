require 'parslet'

module DiceBag
  DefaultRoll = "1d6"

  def self.parse(expression)
    tree = RollParser.new.parse(expression)
    tree = ParseTransform.new.apply(tree)
    # Sometimes, we get a hash back, so wrap it as a single element array.
    tree = [tree] unless tree.is_a?(Array)
    tree = normalize_tree(tree)
  rescue Parslet::ParseFailed => failure
    puts failure.cause.ascii_tree
  end

  def self.normalize_tree(tree)
    tree.collect do |part|
      case part
      when Hash
          if part.has_key?(:start)
            xdx  = normalize_xdx(part[:start])
            part = [:start, RollPart.new(xdx)]
          end
      when Array
        op = part.first
        val = part.last

        op = case op
        when "+" then :add
        when "-" then :sub
        when "*" then :mul
        when "/" then :div
        end

        # If the value is a hash, it's an :xdx hash.
        # Normalize it.
        if val.is_a?(Hash)
          xdx = normalize_xdx(val)
          val = RollPart.new(xdx)
        else
          val = StaticPart.new(val)
        end

        part = [op, val]
      end
      part
    end
  end

  def self.normalize_xdx(xdx)
    count = xdx[:xdx][:count]
    sides = xdx[:xdx][:sides]
    notes = []

    # Default to at least 1 die.
    count = 1 if count.nil? || count.zero?

    # Set the :count and :sides keys directly
    # and get rid of the :xdx sub-hash.
    xdx[:count] = count
    xdx[:sides] = sides
    xdx.delete(:xdx)
    return xdx
  end
end
