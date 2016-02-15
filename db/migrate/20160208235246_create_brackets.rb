class CreateBrackets < ActiveRecord::Migration
  def change
    create_table :brackets do |t|
    	t.integer :event_id
    	t.string :name
    	t.string :sponsor

      t.timestamps null: false
    end
  end
end
