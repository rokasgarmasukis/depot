class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :title, length: { minimum: 5 }
  validates :image_url, allow_blank: true, format: {
                with: /\.(gif|jpg|png)\z/i,
                message: "mus be a URL for GIF, JPG or PNG image.",
              }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
