require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.email { Faker::Internet.email }
    f.password "123123"
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
  end

  factory :curriculum do |f|
    f.title { Faker::LordOfTheRings.location }
    f.grade "Grade 7"
    f.subject "Digital Technology"
    f.content { Faker::Hacker.say_something_smart }
  end

end
