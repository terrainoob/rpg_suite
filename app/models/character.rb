class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :race
  belongs_to :character_class

  has_many :conditions, through: :active_conditions
  has_many :active_conditions, as: :conditionable

  has_many :character_skills
  has_many :skills, through: :character_skills

  has_many :character_feats
  has_many :feats, through: :character_feats

  classy_enum_attr :alignment

  validates :name, presence: true, uniqueness: {scope: :user}
end
