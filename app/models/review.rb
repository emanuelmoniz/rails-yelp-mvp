class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :category, presence: true
  validates :category, inclusion: {
    in: [0, 1, 2, 3, 4, 5], message: 'must be from 0 to 5.'
  }
end
