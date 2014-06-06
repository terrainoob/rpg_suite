class Size < ClassyEnum::Base
  def initialize
    @attributes = {}
    @attributes[:mod] = 0
    @attributes[:special_mod] = 0
    @attributes[:fly_mod] = 0
    @attributes[:stealth_mod] = 0
    @attributes[:reach] = 0
  end

  def modifier
    @attributes[:mod]
  end

  def special_modifier
    @attributes[:special_mod]
  end

  def fly_modifier
    @attributes[:fly_mod]
  end

  def stealth_modifier
    @attributes[:stealth_mod]
  end

  def reach
    @attributes[:reach]
  end
end

class Size::Fine < Size
  def initialize
    super
    @attributes[:mod] = 8
    @attributes[:special_mod] = -8
    @attributes[:fly_mod] = 8
    @attributes[:stealth_mod] = 16
  end
end

class Size::Diminutive < Size
  def initialize
    super
    @attributes[:mod] = 4
    @attributes[:special_mod] = -4
    @attributes[:fly_mod] = 6
    @attributes[:stealth_mod] = 12
  end
end

class Size::Tiny < Size
  def initialize
    super
    @attributes[:mod] = 2
    @attributes[:special_mod] = -2
    @attributes[:fly_mod] = 4
    @attributes[:stealth_mod] = 8
  end
end

class Size::Small < Size
  def initialize
    super
    @attributes[:mod] = 1
    @attributes[:special_mod] = -1
    @attributes[:fly_mod] = 2
    @attributes[:stealth_mod] = 4
    @attributes[:reach] = 5
  end
end

class Size::Medium < Size
  def initialize
    super
    @attributes[:reach] = 5
  end
end

class Size::LargeTall < Size
  def initialize
    super
    @attributes[:mod] = -1
    @attributes[:special_mod] = 1
    @attributes[:fly_mod] = -2
    @attributes[:stealth_mod] = -4
    @attributes[:reach] = 10
  end
end

class Size::LargeLong < Size
  def initialize
    super
    @attributes[:mod] = -1
    @attributes[:special_mod] = 1
    @attributes[:fly_mod] = -2
    @attributes[:stealth_mod] = -4
    @attributes[:reach] = 10
  end
end

class Size::HugeTall < Size
  def initialize
    super
    @attributes[:mod] = -2
    @attributes[:special_mod] = 2
    @attributes[:fly_mod] = -4
    @attributes[:stealth_mod] = -8
    @attributes[:reach] = 15
  end
end

class Size::HugeLong < Size
  def initialize
    super
    @attributes[:mod] = -2
    @attributes[:special_mod] = 2
    @attributes[:fly_mod] = -4
    @attributes[:stealth_mod] = -8
    @attributes[:reach] = 15
  end
end

class Size::GargantuanTall < Size
  def initialize
    super
    @attributes[:mod] = -4
    @attributes[:special_mod] = 4
    @attributes[:fly_mod] = -6
    @attributes[:stealth_mod] = -12
    @attributes[:reach] = 20
  end
end

class Size::GargantuanLong < Size
  def initialize
    super
    @attributes[:mod] = -4
    @attributes[:special_mod] = 4
    @attributes[:fly_mod] = -6
    @attributes[:stealth_mod] = -12
    @attributes[:reach] = 20
  end
end

class Size::ColossalTall < Size
  def initialize
    super
    @attributes[:mod] = -8
    @attributes[:special_mod] = 8
    @attributes[:fly_mod] = -8
    @attributes[:stealth_mod] = -16
    @attributes[:reach] = 30
  end
end

class Size::ColossalLong < Size
  def initialize
    super
    @attributes[:mod] = -8
    @attributes[:special_mod] = 8
    @attributes[:fly_mod] = -8
    @attributes[:stealth_mod] = -16
    @attributes[:reach] = 30
  end
end
