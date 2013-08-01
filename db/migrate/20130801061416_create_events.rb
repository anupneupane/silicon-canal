class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :starts_at
      t.datetime :ends_at
      t.text :description
      t.string :location
      t.string :website
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
