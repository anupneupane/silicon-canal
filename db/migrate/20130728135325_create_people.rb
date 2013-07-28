class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text   :bio
      t.string :twitter
      t.string :linkedin
      t.string :url
      t.string :email

      t.text :skills

      t.timestamps
    end
  end
end
