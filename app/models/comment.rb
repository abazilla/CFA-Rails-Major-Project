class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :curriculum

  validates :content, presence: true
end
