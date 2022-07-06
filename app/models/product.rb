class Product < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if prices <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax = prices * 0.09
    return tax.round(2)
  end

  def total
    total = prices + tax
    return total
  end
end
