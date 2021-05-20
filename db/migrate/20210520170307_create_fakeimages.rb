class CreateFakeimages < ActiveRecord::Migration[6.1]
  def change
    create_table :fakeimages do |t|

      t.timestamps
    end
  end
end
