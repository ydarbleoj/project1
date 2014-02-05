  class AddPasswordConfirmationToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :password_confirmation, :string
  end
end
