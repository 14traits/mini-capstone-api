class RemoveProductNameFromImages < ActiveRecord::Migration[7.0]
  def change
    remove_column :images, :product_name
  end
end
