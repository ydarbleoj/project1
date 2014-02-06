class DropRelationship < ActiveRecord::Migration
  def up
    drop_table :relationships
  end

  def down 
     create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  end 
end
