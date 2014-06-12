class Equipment < ActiveRecord::Base
  classy_enum_attr :equipment_type, default: 'gear'

  validates :name, presence: true, uniqueness: true
end
