class AddImageToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :image, :string
    add_column :users, :image, :string
  end
end
