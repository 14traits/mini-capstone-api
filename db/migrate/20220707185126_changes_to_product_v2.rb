class ChangesToProductV2 < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.change :description, :text
      t.change :prices, :decimal, precision: 9, scale: 2
      t.integer :qty
    end
  end
end
