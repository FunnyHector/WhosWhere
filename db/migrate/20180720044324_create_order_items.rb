class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order, index: true, null: false
      t.references :product, index: true, null: false
      t.datetime :item_added_at, null: false

      t.timestamps
    end
  end
end
