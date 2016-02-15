class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.integer :first_competitor_id
        t.string :first_competitor_team
    	t.integer :second_competitor_id
        t.string :second_competitor_team
    	t.integer :bracket_id
    	t.integer :bracket_round
    	t.integer :round_match
    	t.integer :result
    	t.integer :winning_competitor
    	t.integer :advancement_points
    	t.integer :placement_points
        t.integer :tournament_match_number
    	t.integer :match_points

      t.timestamps null: false
    end
  end
end
