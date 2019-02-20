class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: {
    in: CATEGORIES, message: CATEGORIES.join(' ').to_s
  }, presence: true
  validates :img_url, format: {
    with: /.(gif|jpg|png)/i, message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
