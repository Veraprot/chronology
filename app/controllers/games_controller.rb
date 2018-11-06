class GamesController < ApplicationController 
  def index
    @game = Game.all
    render 'index'
  end 

  def new 
    @game = Game.new
    #inside run game logic 
  end 
end 