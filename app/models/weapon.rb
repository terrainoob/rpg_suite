class Weapon < ActiveRecord::Base
  classy_enum_attr :weapon_type, default: 'simple'
end
