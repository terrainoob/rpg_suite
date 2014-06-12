class Equipment < ActiveRecord::Base
  has_many :conditions, through: :active_conditions
  has_many :active_conditions, as: :conditionable

  classy_enum_attr :equipment_type, default: 'gear'

  validates :name, presence: true, uniqueness: true
end
