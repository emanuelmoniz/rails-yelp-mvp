class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: {
    in: [0, 1, 2, 3, 4, 5], message: 'must be from 0 to 5.'
  }
  validates :rating, numericality: true
end
