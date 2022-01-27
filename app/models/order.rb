class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :carted_products
  has_many :carted_products

  def update_totals
    calculated_subtotal = 0
    calculated_tax = 0

    carted_products.each do |carted_product|
      calculated_subtotal += Product.find_by(id: carted_product.product_id).price * carted_product.quantity
      calculated_tax += Product.find_by(id: carted_product.product_id).tax
    end

    calculated_total = calculated_subtotal + calculated_tax
    self.tax = calculated_tax
    self.subtotal = calculated_subtotal
    self.total = calculated_total
    self.save
  end
end
