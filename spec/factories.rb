FactoryGirl.define do
  factory :user do
    name        "Leontien Boere"
    email       "leontien@boere.com"
    password    "foobar"
    password_confirmation "foobar"
  end
end
