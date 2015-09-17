class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author, :string
    add_column :articles, :private, :boolean
  end
end
