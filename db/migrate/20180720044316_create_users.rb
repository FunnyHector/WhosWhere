class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address, null: false

      t.timestamps

      t.index :email_address, unique: true
    end
  end
end
