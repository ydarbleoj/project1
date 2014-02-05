class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy, :following, :followers]

  # GET /players
  def index
    @players = Player.all
  end

  # GET /players/1
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  #  edit is the form not the update 
  def edit
  end

  # POST /players
  def create
    @player = Player.new(player_params)

    # respond_to do |format|
      if @player.save
        redirect_to @player, notice: 'Player was successfully created.' 
      else
        render action: 'new' 
      end
    # end
  end

  # PATCH/PUT /players/1
  #  here we need to make sure authorized like destroy
  def update
    # respond_to do |format|
      if @player.update(player_params)
        redirect_to @player, notice: 'Player was successfully updated.' 
      else
        render action: 'edit' 
      end
    # end
  end

  # DELETE /players/1
  def destroy
    # 
    @player.destroy
    respond_to do |format|
      edirect_to players_url 
    end
  end

  # sending challenges for tournament 
  # friend or follower 
  def send_challenge(follower)
    sent_challenges.create(receiver: follower)
  end  


  # def following
  
  #   @player = Player.find(params[:id])
  #   @players = @player.followed_users
  #   render 'show_follow'
  # end

  # def followers
  #   @player = Player.find(params[:id])
  #   @players = @player.followers
  #   render 'show_follow'
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :handicap, :email, :password, :password_confirmation, :city, :state)
    end
end
