# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spell do
    name "Test Spell"
    school "Some school"
    subschool "some subschool"
    description "This does some nasty stuff"
    short_description "MyText"
    casting_time "1 round"
    components "V,S"
    verbal true
    somatic true
    material false
    focus false
    divine_focus false
    range "10 ft."
    area ""
    effect "does something"
    targets "1 monster"
    duration "instant"
    dismissable false
    shapeable false
    saving_throw "none"
    spell_resistance "none"
    material_costs 0
    url ""
    source "PFRPG"
  end
end
