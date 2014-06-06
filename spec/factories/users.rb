FactoryGirl.define do
  sequence(:email) { |n| "player#{n}@example.com" }

  factory :user do
    email
    password 'testpass'
    password_confirmation 'testpass'
  end

  factory :confirmed_user, parent: :user do
    confirmed_at Time.now
  end

end
