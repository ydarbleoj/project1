class ScoresController < ApplicationController

  def index 
    @scores = Score.all
  end 

  def new
    @score = Score.new
    # @players = @score.find(id)
  end 

  def create 
    id = params.require(:id)

  end 

  def show 
    id = params.require(:id)
    @score = Score.where(params[:id])
    @players = @score.tournaments
  end




  private 
  def score_params
    params.require(:score).permit(:gross_score)
  end 

end


