class Character < ActiveRecord::Base
  enum gender: {
    male: 0,
    female: 1
  }

  enum alignment: {
    lawful_good: 0,
    neutral_good: 1,
    chaotic_good: 2,
    lawful_neutral: 3,
    neutral: 4,
    chaotic_neutral: 5,
    lawful_evil: 6,
    neutral_evil: 7,
    chaotic_evil: 8
  }

  after_initialize :defaults
  belongs_to :user

  validates :name, presence: true, uniqueness: {scope: :user}

  def defaults
    self.gender ||= 0
    self.alignment ||= 4
  end
end
