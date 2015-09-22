class CreateSetups < ActiveRecord::Migration
  def change
    create_table :setups do |t|
      t.string :symbol
      t.datetime :datetime
      t.string :pattern

      t.timestamps null: false
    end
  end
end
