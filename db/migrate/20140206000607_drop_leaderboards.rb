class DropLeaderboards < ActiveRecord::Migration
  def up
    drop_table :leaderboards
  end

  def down 
     create_table "leaderboards", force: true do |t|
    t.string   "tournament_id"
    t.string   "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  end 

end
