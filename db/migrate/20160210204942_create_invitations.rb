
class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
    	t.integer :user_id
    	t.integer :director_id
    	t.integer :group_id
    	t.integer :status


      t.timestamps null: false
    end
  end
end