class AddPriceToSetups < ActiveRecord::Migration
  def change
    add_column :setups, :price, :float
  end
end
