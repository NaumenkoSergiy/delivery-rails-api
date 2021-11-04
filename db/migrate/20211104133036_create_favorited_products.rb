class CreateFavoritedProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :favorited_products do |t|
      t.references :product, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
