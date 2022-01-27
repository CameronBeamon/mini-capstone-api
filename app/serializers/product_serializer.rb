class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_discounted?, :price, :images, :supplier, :description

  has_many :carted_products
end
