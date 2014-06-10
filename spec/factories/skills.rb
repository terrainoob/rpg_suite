# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :skill do
    name "Test Skill"
    description "some description"
    untrained false
    armor_penalty false
    key_ability "int"
  end
end
