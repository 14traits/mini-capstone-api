class AddProductIdtoPhotos < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :product_id, :integer
  end
end
