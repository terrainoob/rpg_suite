# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :armor do
    name "Test Armor"
    armor_type "light"
    cost "50 gp"
    ac_bonus 1
    max_dex_bonus 8
    armor_check_penalty -1
    spell_fail 0.05
    speed_30 30
    speed_20 20
    weight 1.5
  end
end
