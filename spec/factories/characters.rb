# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :character do
    user nil
    name "MyString"
    level 1
    deity "MyString"
    homeland "MyString"
    alignment 1
    size 1
    gender 1
    age 1
    height "MyString"
    weight 1
    hair "MyString"
    eyes "MyString"
    str 1
    dex 1
    con 1
    int 1
    wis 1
    cha 1
    max_hp 1
    current_hp 1
  end
end
