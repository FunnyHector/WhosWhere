class CreateShoppingCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_items do |t|
      t.references :shopping_cart, index: true, null: false
      t.references :product, index: true, null: false
      t.datetime :item_added_at, null: false

      t.timestamps
    end
  end
end
