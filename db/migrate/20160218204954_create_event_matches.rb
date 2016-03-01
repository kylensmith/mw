class CreateEventMatches < ActiveRecord::Migration
  def change
    create_table :event_matches do |t|
    	t.integer :event_id
    	t.integer :match_id

      t.timestamps null: false
    end
  end
end
