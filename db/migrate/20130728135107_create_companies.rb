class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name,         null: false
      t.string :tagline,      null: false, default: ""
      t.text   :description,  null: false, default: ""
      t.text   :address,      null: false, default: ""
      t.string :url,          null: false, default: ""
      t.string :twitter,      null: false, default: ""
      t.string :crunchbase,   null: false, default: ""

      t.text :tags, null: false

      t.timestamps
    end
  end
end
