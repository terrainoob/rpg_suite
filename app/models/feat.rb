class Feat < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  classy_enum_attr :feat_type, default: 'general'

end
