class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|

      t.timestamps null: false
    end
  end
end
