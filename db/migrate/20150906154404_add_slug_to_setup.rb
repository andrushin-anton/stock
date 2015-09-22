class AddSlugToSetup < ActiveRecord::Migration
  def change
    add_column :setups, :slug, :string
  end
end
