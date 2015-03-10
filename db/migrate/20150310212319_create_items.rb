class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :title
      t.text :description
      t.integer :price
      t.integer :status

      t.timestamps null: false
    end
  end
end
