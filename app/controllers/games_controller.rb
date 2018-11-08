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
    req = Request.new(19549494, 19600101)
    @api_goodies = req.process_request
    render "play", layout: false
  end 

  # def choose_time_period
  #   req = Request.new(params[:begin_date].to_i, params[:end_date].to_i)
  #     req.process_request
  #     @api_goodies = choose_time_period
  #     redirect_to games_play_path 
  # end 

  private

  def game_params
    params.require(:game).permit(:begin_date, :end_date)
  end 
end 