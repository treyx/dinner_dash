class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :status
      t.integer :user_id
      t.hstore :cart_items
      t.string :price, array: true
      t.timestamps
    end
  end
end
