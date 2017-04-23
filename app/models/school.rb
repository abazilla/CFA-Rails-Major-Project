class School < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :name, use: :slugged

  # def self.add_teacher(teacher)
  #   self.teacher_list.push(teacher.to_s)
  # end

end
