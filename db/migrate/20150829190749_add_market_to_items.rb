class AddMarketToItems < ActiveRecord::Migration
  def change
    add_column :items, :marker, :string
  end
end
