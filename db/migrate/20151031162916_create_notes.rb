class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :symbol
      t.datetime :datetime
      t.string :pattern

      t.timestamps null: false
    end
  end
end
