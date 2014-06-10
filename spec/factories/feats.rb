# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feat do
    name "Test Feat"
    feat_type "general"
    description "some description"
    url ""
    feat_prereq ""
    other_prereq ""
    benefit ""
    normal ""
    special ""
  end
end
