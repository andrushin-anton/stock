class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.timestamp :date
      t.float :open
      t.float :hight
      t.float :low
      t.float :close
      t.integer :volume
      t.float :adj_close

      t.timestamps null: false
    end
  end
end
