class AddTitleToPages < ActiveRecord::Migration
  def change
    add_column :pages, :title, :string
    add_column :pages, :content, :text
    add_column :pages, :slug, :string
  end
end
