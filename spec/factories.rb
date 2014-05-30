FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    year 2016
    password "foobar"
    password_confirmation "foobar"
  end
end