require 'faker'

FactoryGirl.define do
  factory :school do |f|
    f.name { Faker::LordOfTheRings.name }
    f.location { Faker::LordOfTheRings.location }
    f.grade_low "K"
    f.grade_high "12"
    # f.user "user@user.com"
    f.curriculum_list []
    f.teacher_list ["user@user.com"]
  end
end
