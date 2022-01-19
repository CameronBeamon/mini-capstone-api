class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  def products
    Product.where(supplier_id: id)
  end
end
