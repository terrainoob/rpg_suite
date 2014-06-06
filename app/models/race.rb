class Race < ActiveRecord::Base
  belongs_to :user
  classy_enum_attr :size, default: 'medium'

  validates :name, presence: true, uniqueness: {scope: :user}
end
