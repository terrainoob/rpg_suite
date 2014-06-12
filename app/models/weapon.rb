class Weapon < ActiveRecord::Base
  has_many :conditions, through: :active_conditions
  has_many :active_conditions, as: :conditionable

  classy_enum_attr :weapon_type, default: 'simple'

  validates :name, presence: true, uniqueness: true
end
