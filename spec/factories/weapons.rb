# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :weapon do
    name "Test Weapon"
    weapon_type "simple"
    cost "1 gp"
    dmg_s "1d4"
    dmg_m "1d6"
    critical "x2"
    range 0
    weight 1.5
    damage_type "p"
    special ""
    ammunition ""
  end
end
