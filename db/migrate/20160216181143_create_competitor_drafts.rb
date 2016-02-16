class CreateCompetitorDrafts < ActiveRecord::Migration
  def change
    create_table :competitor_drafts do |t|
    	t.integer :draft_id
    	t.integer :bracket_id
    	t.integer :competitor_id

      t.timestamps null: false
    end
  end
end
