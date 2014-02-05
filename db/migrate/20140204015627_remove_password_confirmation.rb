class RemovePasswordConfirmation < ActiveRecord::Migration
  def change
    remove_column :players, :password_confirmation
  end
end
