class RelationshipsController < ApplicationController
 before_filter :signed_in_user
 
  def create
    @player = Player.find(params[:relationship][:followed_id])
    current_player.follow!(@player)
    redirect_to @player
  end

  def destroy
    @player = Relationship.find(params[:id]).followed
    current_player.unfollow!(@player)
    redirect_to @player
  end
end
