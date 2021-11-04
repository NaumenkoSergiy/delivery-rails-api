class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :category_id
      t.text :description
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end
