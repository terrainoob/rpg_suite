class Armor < ActiveRecord::Base
  has_many :conditions, through: :active_conditions
  has_many :active_conditions, as: :conditionable

  classy_enum_attr :armor_type, default: 'light'

  validates :name, presence: true, uniqueness: true
end
