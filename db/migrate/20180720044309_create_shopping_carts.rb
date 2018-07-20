class CreateShoppingCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_carts do |t|
      t.datetime :last_modified_at, null: false
      t.references :user, index: true, null: false

      t.timestamps
    end
  end
end
