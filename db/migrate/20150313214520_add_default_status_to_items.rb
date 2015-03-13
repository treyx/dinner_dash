class AddDefaultStatusToItems < ActiveRecord::Migration
  def change
    change_column :items, :status, :integer, :default => 0
  end
end
