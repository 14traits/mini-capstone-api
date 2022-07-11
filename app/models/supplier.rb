class Supplier < ApplicationRecord
  def products_by_supplier
    Product.where(supplier_id: id)
  end
end
