class ChangesInventoryDefaultToZero < ActiveRecord::Migration[6.1]
  def change
    change_column_default :products, :inventory, default: 0
  end
end
