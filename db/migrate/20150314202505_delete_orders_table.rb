class DeleteOrdersTable < ActiveRecord::Migration
  def change
    drop_table :orders
  end
end
