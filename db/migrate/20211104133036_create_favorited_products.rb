class CreateFavoritedProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :favorited_products do |t|

      t.timestamps
    end
  end
end
