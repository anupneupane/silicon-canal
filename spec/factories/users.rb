# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "jez.walker@gmail.com"
    password "footothebar123"
  end
end
