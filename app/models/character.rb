class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :race
  belongs_to :character_class
  classy_enum_attr :alignment

  validates :name, presence: true, uniqueness: {scope: :user}
end
