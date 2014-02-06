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

  


  
  private

  def tournament_params
    params.require(:tournament).permit(:name, :player_count, :number_rounds, :course)
  end 
end





