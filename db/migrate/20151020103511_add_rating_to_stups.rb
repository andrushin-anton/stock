class AddRatingToStups < ActiveRecord::Migration
  def change
    add_column :setups, :rating, :float
  end
end
