class GamesController < ApplicationController 
  def index
    @game = Game.all
  end 

  def new 
    @game = Game.new
  end 

  def create
    @game = Game.create(number_of_players: 0)
    redirect_to new_participant_path
  end 

  def play
    @game = Game.all.last
    render "play"
  end 

  private

  def game_params
    params.require(:game).permit(:number_of_players)
  end 
end 