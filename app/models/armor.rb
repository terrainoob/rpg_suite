class Armor < ActiveRecord::Base
  classy_enum_attr :armor_type, default: 'light'
end
