class Comment < ApplicationRecord
  validates :user_name, presence: true
  validates :comment, presence: true
  validates :date, presence: true
  belongs_to :post
end
