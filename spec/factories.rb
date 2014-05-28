FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    year     2015
    password "foobar"
    password_confirmation "foobar"
  end
end