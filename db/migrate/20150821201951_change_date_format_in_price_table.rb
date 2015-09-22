class ChangeDateFormatInPriceTable < ActiveRecord::Migration
  def up
    change_column :prices, :date, :string
  end

  def down
    change_column :prices, :date, :timestamp
  end
end
