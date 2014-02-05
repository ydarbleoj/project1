class AddPlayerCountToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :player_count, :integer
  end
end
