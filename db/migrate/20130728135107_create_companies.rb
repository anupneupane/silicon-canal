class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :twitter
      t.integer :category_id
      t.string :crunchbase
      t.text :address

      t.text :tags

      t.timestamps
    end
  end
end
