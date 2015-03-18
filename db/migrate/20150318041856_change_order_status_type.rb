class ChangeOrderStatusType < ActiveRecord::Migration
  def change
    remove_column :orders, :status, :text
  end
end
