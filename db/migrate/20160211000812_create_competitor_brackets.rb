class CreateCompetitorBrackets < ActiveRecord::Migration
  def change
    create_table :competitor_brackets do |t|
    	t.integer :competitor_id
    	t.integer :bracket_id

      t.timestamps null: false
    end
  end
end
