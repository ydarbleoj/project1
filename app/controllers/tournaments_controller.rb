class TournamentsController < ApplicationController
  before_action  only: [:show, :edit, :update]


  def index
    @tournaments = Tournament.all
  end

  # GET /tournaments/1
  def show 
    @tournaments = Tournament.all
  end 

  def new
    @tournament = Tournament.new
  end 

  def create
    @tournament = Tournament.new(tournament_params)
    # now the sender has entered/created the tournament
    if @tournament.save 
      redirect_to index
      render action: 'new'
    end 
  end

  # def accept
  #   @challenge = current_player.received_tournaments.find(params[:id])
  #   render :game
  # end

  # def deny
  #   current_player.received_tournaments.destroy(params[:id])
  #   redirect_to tournaments_url
  # end

  # def complete
  #   # end of tourny 
  #   # emails? end of game 
  # end
  private

  def tournament_params
    params.require(:tournament).permit(:name, :player_count, :number_rounds, :course)
  end 
end





