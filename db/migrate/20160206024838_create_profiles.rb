class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.integer :user_id
    	t.string :fname
    	t.string :lname
      t.string :username
    	t.text :bio
    	t.string :city
    	t.string :state
      t.string :mobile
      t.date :birthday

      t.timestamps null: false
    end
  end
end
