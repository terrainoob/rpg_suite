class Character < ActiveRecord::Base
  belongs_to :user

  classy_enum_attr :alignment

  validates :name, presence: true, uniqueness: {scope: :user}

end
