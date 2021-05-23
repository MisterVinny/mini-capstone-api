class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :subtotal, precision: 9, scale: 0
      t.decimal :tax, precision: 9, scale: 0
      t.decimal :total, precision: 9, scale: 0

      t.timestamps
    end
  end
end
