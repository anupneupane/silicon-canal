class CreateTableCategoriesUsers < ActiveRecord::Migration
  def change
    create_table :categories_users, :id => false do |t|
      t.references :category, :user
    end
    add_index :categories_users, [:category_id, :user_id]
  end
end