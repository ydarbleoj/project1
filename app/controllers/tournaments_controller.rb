class TournamentsController < ApplicationController
  before_action  only: [:show, :edit, :update]


  def index
    @tournaments = Tournament.all
  end

  def new
    @tournament = Tournament.new
  end 

  # GET /tournaments/1
  def show 
    id = params.require(:id)
    @tournament = Tournament.find(id)
    @players = @tournament.scores
  end 

  def create
    @tournament = Tournament.new(tournament_params)
    # now the sender has entered/created the tournament
    if @tournament.save 
      redirect_to index
      render action: 'new'
    end 
  end

# need to be able to display a tournament 
#  with and link to it and the players 
# id = params.require(:id)
# @torunament = tournament.find(id)
# @player = @tournament.player

  
  private

  def tournament_params
    params.require(:tournament).permit(:name, :player_count, :number_rounds, :course)
  end 
end


 # @tournament.scores.each {|x| puts "#{x.player_id}"}

 # @tournament.scores.each {|x| puts "#{x.player_id} - #{x.gross_score}"}

