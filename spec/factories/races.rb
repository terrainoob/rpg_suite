# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :race do
    name "TestRace"
    description "Some long description"
    size "medium"
    speed 1
  end
end
