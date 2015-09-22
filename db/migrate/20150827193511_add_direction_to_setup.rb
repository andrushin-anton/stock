class AddDirectionToSetup < ActiveRecord::Migration
  def change
    add_column :setups, :direction, :string
  end
end
