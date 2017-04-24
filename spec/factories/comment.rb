require 'faker'

FactoryGirl.define do  
  factory :comment do |f|
    f.content { Faker::Hacker.say_something_smart }
  end
end
