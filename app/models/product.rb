class Product < ApplicationRecord

  has_many :product_variationsa
  has_many :images, as: :imageable

  has_and_belongs_to_many :aspects
  has_and_belongs_to_many :options
end

