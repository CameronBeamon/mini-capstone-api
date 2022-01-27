class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :subtotal, :tax, :total

  has_many :carted_products
end
