# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :character_class do
    name "TestClass"
    description "Some description"
    hit_die "1d6"
    start_wealth "2d6*10"
    skills_per_level 1
    skills_per_level_mod "int"
  end
end
