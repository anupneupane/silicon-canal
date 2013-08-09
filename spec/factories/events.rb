# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    starts_at "2013-08-01 07:14:16"
    ends_at "2013-08-01 07:14:16"
    description "MyText"
    location "MyString"
    website "MyString"
    created_by 1
    updated_by 1
  end
end
