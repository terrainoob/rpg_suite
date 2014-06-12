class ParseTransform < Parslet::Transform
  # Match an operator followed by a static number.
  rule(:op => simple(:o), :value => simple(:v)) do
    [String(o), Integer(v)]
  end

  # Match an operator followed by an :xdx subtree.
  rule(:op => simple(:o), :value => subtree(:part)) do
    [String(o),
      {
        :xdx => {
          :count => Integer(part[:xdx][:count]),
          :sides => Integer(part[:xdx][:sides])
        },
      }
    ]
  end

  rule(:start => subtree(:part)) do
    {:start => {
      :xdx => part[:xdx]
      }
    }
  end

  # Convert the count and sides of an :xdx part.
  rule(:count => simple(:c), :sides => simple(:s)) do
    #{ :count => Integer(c), :sides => Integer(s) }
    { :count => c.to_i || 1, :sides => Integer(s) }
  end
end