class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
    	t.integer :competitor_id
    	t.integer :competitor_id
    	t.integer :bracket_id
    	t.integer :bracket_round
    	t.integer :round_match
    	t.integer :result
    	t.integer :winning_competitor
    	t.integer :advancement_points
    	t.integer :placement_points
    	t.integer :match_points
    	
      t.timestamps null: false
    end
  end
end
