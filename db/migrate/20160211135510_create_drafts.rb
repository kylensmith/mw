class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
    	t.integer :user_id
    	t.integer :event_id
    	t.integer :group_id

      t.timestamps null: false
    end
  end
end
