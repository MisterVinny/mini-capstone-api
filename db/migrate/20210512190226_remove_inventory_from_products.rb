class RemoveInventoryFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :inventory, :integer
  end
end
