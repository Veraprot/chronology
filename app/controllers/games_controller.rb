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
    @card = Card.all

    render "play", layout: false
  end 

  def choose_time_period
    req = Request.new(params[:begin_date], params[:end_date])
    redirect_to games_play_path 
  end 

  private

  def game_params
    params.require(:game).permit(:begin_date, :end_date)
  end 
end 