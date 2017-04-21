class Curriculum < ApplicationRecord

  belongs_to :user
  has_many :comments

  validates :title, :content, :grade, :subject, presence: true

  mount_uploaders :files, FileUploader

  resourcify

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  ratyrate_rateable "rating"

  extend FriendlyId
  friendly_id :title, use: :slugged



end
