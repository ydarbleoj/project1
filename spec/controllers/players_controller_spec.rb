require 'spec_helper'


describe PlayersController do 

  describe "GET index" do
    before(:each) do 
      @players = mock_model("Player")
      allow(Player).to receive(:index).and_return(@players)
    end
  end 

  describe "POST create" do 
    before(:each) do 
      @player = mock_model("Player")
      allow(Player).to receive(:create)
    end 

    # it should build a new player 
    


    # it should save it 

  end 




end 