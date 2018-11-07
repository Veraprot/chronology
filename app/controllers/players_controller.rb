class PlayersController < ApplicationController 
  #view player stats 
  #index show 
  def index
    @players = Player.all
  end

  def new 
    @player = Player.new
  end

  def create
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end


  def delete
    
  end
end 