# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :equipment do
    name "Test Equipment"
    equipment_type "gear"
    cost "1 sp"
    weight 0.5
    craft_dc nil
  end
end
