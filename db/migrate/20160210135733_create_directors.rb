class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
    	t.integer :user_id
    	t.integer :group_id

      t.timestamps null: false
    end
  end
end
