class CreateTableCategoriesUsers < ActiveRecord::Migration
  def change
    create_table :user_event_categories, :id => false do |t|
      t.integer :event_category_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_foreign_key :user_event_categories, :users, column: :user_id
    add_foreign_key :user_event_categories, :event_categories, column: :event_category_id
  end
end
