class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :event_name
    	t.string :year
    	t.date :start_date
    	t.date :end_date


      t.timestamps null: false
    end
  end
end
