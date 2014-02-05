module SessionsHelper

   #SessionHelper manages @current_player, that's the player currently
  # signed in.

  # signs in supplied player, called from SessionController
  def sign_in(player)
    cookies.permanent[:remember_token] = player.remember_token
    # current_player is available in controllers and views!
    # This is an is an assignment, which we must define - see below
    # note that next line is a call to setter 'def current_player=(player)' below
    current_player = player
  end

  def signed_in?
    !current_player.nil?
  end

  # Authorization: signed_in_user is called in a before_filter
  # callback in each controller, see books/ingredients/recipe controllers
  # Ensures access to create/edit functions on if signed in.
  def signed_in_player
    unless signed_in?
      # If not signed in, save current location in session object
      # to be able to redirect after successful sign in.
      session[:return_to] = request.url
      # prompt sign in page
      redirect_to signin_url, notice: "Please sign in."
    end
  end

  # signs out player by deleting @current_player and session cookie
  def sign_out
    @current_player = nil
    cookies.delete(:remember_token)
  end

  # Getter and setter for @current_player
  def current_player=(player)
    @current_player = player
  end

  # if current_player doesn't exist, check session cookie for player session
  # If exists, get the player record that belongs to that session.
  def current_player
    @current_player ||= Player.find_by_remember_token(cookies[:remember_token])
  end

end
