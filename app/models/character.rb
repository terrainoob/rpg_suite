class Character < ActiveRecord::Base
  belongs_to :user

  classy_enum_attr :alignment
  classy_enum_attr :gender

  validates :name, presence: true, uniqueness: {scope: :user}

end
