class Book < ApplicationRecord
  belongs_to :publisher

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :publisher, presence: true
  validates :published_at, presence: true
end
