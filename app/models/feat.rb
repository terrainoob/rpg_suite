class Feat < ActiveRecord::Base
  has_many :character_feats
  has_many :characters, through: :character_feats

  validates :name, presence: true, uniqueness: true

  classy_enum_attr :feat_type, default: 'general'

end
