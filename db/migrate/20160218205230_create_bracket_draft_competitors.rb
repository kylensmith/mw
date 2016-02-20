class CreateBracketDraftCompetitors < ActiveRecord::Migration
  def change
    create_table :bracket_draft_competitors do |t|

      t.timestamps null: false
    end
  end
end
