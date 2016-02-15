class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :gname
    	t.integer :gtype

      t.timestamps null: false
    end
  end
end
