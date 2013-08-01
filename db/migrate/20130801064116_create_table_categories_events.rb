class CreateTableCategoriesEvents < ActiveRecord::Migration
  def change
    create_table :categories_events, :id => false do |t|
      t.references :category, :event
    end
    add_index :categories_events, [:category_id, :event_id]
  end
end