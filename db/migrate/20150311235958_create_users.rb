class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :password_digest
      t.text :email
      t.text :full_name
      t.integer :role
    end
  end
end
