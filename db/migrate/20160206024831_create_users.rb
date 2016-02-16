class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.integer :profile_id
    	t.string :password
    	

      t.timestamps null: false
    end
  end
end
