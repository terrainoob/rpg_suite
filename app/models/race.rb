class Race < ActiveRecord::Base
  has_many :characters
  classy_enum_attr :size, default: 'medium'

  validates :name, presence: true, uniqueness: true
end
