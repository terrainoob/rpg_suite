class Armor < ActiveRecord::Base
  classy_enum_attr :armor_type, default: 'light'

  validates :name, presence: true, uniqueness: true
end
