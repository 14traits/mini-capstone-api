class RenamePhotosToImages < ActiveRecord::Migration[7.0]
  def change
    rename_table :photos, :images
  end
end
