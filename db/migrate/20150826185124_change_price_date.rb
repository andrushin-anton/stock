class ChangePriceDate < ActiveRecord::Migration
  def up
    change_column :prices, :date, :datetime
  end

  def down
    change_column :prices, :date, :string
  end
end
