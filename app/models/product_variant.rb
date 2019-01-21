class ProductVariant < ApplicationRecord
  has_many :images, as: :imageable
  belongs_to :product
  has_many :options, through: :product
  has_many :aspects, through: :product
end
