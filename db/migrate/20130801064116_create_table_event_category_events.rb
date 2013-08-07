class CreateTableEventCategoryEvents < ActiveRecord::Migration
  def change
    create_table :event_category_events, :id => false do |t|
      t.integer :event_category_id, null: false
      t.integer :event_id, null: false
      t.timestamps
    end
    add_foreign_key :event_categories_events, :events, column: :event_id
    add_foreign_key :event_categories_events, :event_categories, column: :event_category_id
  end
end
