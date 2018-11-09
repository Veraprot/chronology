class CardsController < ApplicationController 
  def build_cards 
    @card = Card.all
  end 

  def choose_time_period
    req = Request.new(params[:begin_date], params[:end_date])
    redirect_to games_play_path 
  end
end 