class AddCityToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :city, :string
  end
end
