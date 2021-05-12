class ChangePriceIntegerToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :price, :decimal, precision: 9, scale: 0
  end
end
