class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
