class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 5..500 }
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  has_many :images
  # def get_images
  #   Image.where(product_id: id)
  # end
  has_many :orders

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax_cost = price * 0.09
    @tax_cost = tax_cost
    return tax_cost
  end

  def total
    total_cost = price + @tax_cost
    return total_cost
  end
end
