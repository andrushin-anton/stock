class AddLevelsToSetups < ActiveRecord::Migration
  def change
    add_column :setups, :levels, :text
  end
end
