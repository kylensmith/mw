class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
    	t.string :fname
    	t.string :lname
    	t.string :team

      t.timestamps null: false
    end
  end
end
