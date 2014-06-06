# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :character do
    user nil
    name "John"
    level 1
    deity ""
    homeland ""
    alignment "neutral"
    gender "male"
    age 25
    height "6'0"
    weight 150
    hair ""
    eyes ""
    str 0
    dex 0
    con 0
    int 0
    wis 0
    cha 0
    max_hp 1
    current_hp 1
  end
end
