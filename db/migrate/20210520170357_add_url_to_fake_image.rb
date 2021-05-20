class AddUrlToFakeImage < ActiveRecord::Migration[6.1]
  def change
    add_column :fakeimages, :url, :string
  end
end
