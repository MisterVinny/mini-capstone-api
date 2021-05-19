class RemoveInventoryCountFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :inventory_count, :integer
  end
end
