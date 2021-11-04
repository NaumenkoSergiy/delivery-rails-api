class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.references :order, null: false
      t.references :product, null: false

      t.timestamps
    end
  end
end
