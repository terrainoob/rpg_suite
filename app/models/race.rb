class Race < ActiveRecord::Base
  belongs_to :user
  has_many :characters
  classy_enum_attr :size, default: 'medium'

  validates :name, presence: true, uniqueness: {scope: :user}
end
