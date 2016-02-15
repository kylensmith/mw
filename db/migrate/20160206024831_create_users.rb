class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.integer :profile_id
    	t.date :birthday
    	t.string :password
    	t.string :mobile

      t.timestamps null: false
    end
  end
end
