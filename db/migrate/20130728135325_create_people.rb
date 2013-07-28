class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name,     null: false
      t.string :tagline,  null: false, default: ""
      t.text   :bio,      null: false, default: ""
      t.string :twitter,  null: false, default: ""
      t.string :linkedin, null: false, default: ""
      t.string :url,      null: false, default: ""
      t.string :email,    null: false, default: ""

      t.text :skills, null: false

      t.timestamps
    end
  end
end
