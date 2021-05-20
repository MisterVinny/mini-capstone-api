class AddProductIdToFakeimage < ActiveRecord::Migration[6.1]
  def change
    add_column :fakeimages, :product_id, :integer
  end
end
