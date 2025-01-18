class Content < ApplicationRecord
  has_one_attached :image
  has_many_attached :videos

  validates :title, presence: true
  validates :description, presence: true
end
