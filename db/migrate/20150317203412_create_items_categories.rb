class CreateItemsCategories < ActiveRecord::Migration
  def change
    create_table :items_categories do |t|
      t.integer :item_id
      t.integer :category_id
    end
  end
end
