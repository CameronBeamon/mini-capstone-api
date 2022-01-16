class Product < ApplicationRecord
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
