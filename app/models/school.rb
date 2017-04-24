class School < ApplicationRecord
  belongs_to :user

  has_many :school_teachers#, foreign_key: "school_id", class_name: "School"
  has_many :teachers, through: :school_teachers, foreign_key: 'user_id', source: 'user'

  validates :name, :location, presence: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  resourcify

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # def self.add_teacher(teacher)
  #   self.teacher_list.push(teacher.to_s)
  # end

end
