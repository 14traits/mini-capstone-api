class ChangePhotosColumnImageUrltoUrl < ActiveRecord::Migration[7.0]
  def change
    rename_column :photos, :image_url, :url
  end
end
