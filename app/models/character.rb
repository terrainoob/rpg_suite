class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :race
  belongs_to :character_class

  has_many :character_skills
  has_many :skills, through: :character_skills

  classy_enum_attr :alignment

  validates :name, presence: true, uniqueness: {scope: :user}
end
