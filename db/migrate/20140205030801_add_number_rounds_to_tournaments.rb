class AddNumberRoundsToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :number_rounds, :integer
  end
end
