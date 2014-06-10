class Skill < ActiveRecord::Base
  has_many :character_class_skills
  has_many :character_classes, through: :character_class_skills

  has_many :character_skills
  has_many :characters, through: :character_skills

  validates :name, presence: true, uniqueness: true
end
