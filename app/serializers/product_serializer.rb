class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sale_message, :price, :discounted_price
  has_many :images
end
