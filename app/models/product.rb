class Product < ApplicationRecord
  # validates :name, presence: true, uniqueness: true
  # validates :prices, presence: true, numericality: { greater_than: 0 }
  # validates :description, length: { in: 10..500 }
  # validates :image_url, format: { with: /\.(png|jpg)\Z/i }

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

  def supplier
    Supplier.find_by(id: supplier_id)
  end
end
