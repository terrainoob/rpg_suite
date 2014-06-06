class Character < ActiveRecord::Base
  belongs_to :user

  classy_enum_attr :alignment
  classy_enum_attr :gender
  classy_enum_attr :size

  validates :name, presence: true, uniqueness: {scope: :user}

end
