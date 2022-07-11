class RemoveColumnsFromPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :copyright_info
    remove_column :photos, :title
  end
end
