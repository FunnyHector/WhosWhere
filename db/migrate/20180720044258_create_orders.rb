class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :payment_made_at, null: false
      t.decimal :total_price, precision: 8, scale: 2, null: false
      t.references :user, index: true, null: false

      t.timestamps
    end
  end
end
