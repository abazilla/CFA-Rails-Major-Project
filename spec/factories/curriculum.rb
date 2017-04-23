require 'faker'

FactoryGirl.define do
  factory :curriculum do |f|
    f.title { Faker::LordOfTheRings.location }
    f.grade "Grade 7"
    f.subject "Digital Technology"
    f.content { Faker::Hacker.say_something_smart }
  end
end
