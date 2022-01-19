class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_discounted?, :price, :images, :supplier, :description
end
