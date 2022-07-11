class AddColumnProductIdToPhoto < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :product_name, :string
  end
end
