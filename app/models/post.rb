class Post < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :mood, presence: true
  validates :date, presence: true
  validates :age, presence: true
  has_one_attached :image
end
