class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end

  def create
    player = Player.find_by_email(params[:session][:email].downcase)
    if player && player.authenticate(params[:session][:password])
      # Sign the player in and redirect to the player's show page.
      sign_in player
      redirect_to player
    else
      # Create an error message and re-render the signin form.
      flash.now[:error]='Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
      sign_out
      redirect_to root_url
  end
end
