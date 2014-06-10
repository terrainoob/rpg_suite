# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :character_skill do
    character
    skill
    ranks 0
    ability_mod 0
    class_mod 0
    race_mod 0
    misc_mod 0
  end
end
