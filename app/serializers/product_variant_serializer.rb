class ProductVariantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sale_message, :price, :discounted_price,
    :sign

  belongs_to :product
  
  has_many :images
  has_many :options
  has_many :aspects
  
end
