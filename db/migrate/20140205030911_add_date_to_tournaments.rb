class AddDateToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :date, :string
  end
end
