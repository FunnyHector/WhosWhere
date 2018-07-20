class AddIndexToProductTitle < ActiveRecord::Migration[5.2]
  def change
    add_index :products, :title
    add_index :products, :price
  end
end
