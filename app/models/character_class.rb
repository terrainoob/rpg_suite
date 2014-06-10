class CharacterClass < ActiveRecord::Base
  has_many :characters
  has_many :character_class_skills
  has_many :skills, through: :character_class_skills

  validates :name, presence: true, uniqueness: true
end
