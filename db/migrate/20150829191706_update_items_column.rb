class UpdateItemsColumn < ActiveRecord::Migration
  def up
    add_column :items, :market, :string
    remove_column :items, :marker
  end

  def down
  end
end
