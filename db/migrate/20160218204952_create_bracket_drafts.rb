class CreateBracketDrafts < ActiveRecord::Migration
  def change
    create_table :bracket_drafts do |t|

      t.timestamps null: false
    end
  end
end
