class CardsController < ApplicationController 
  def build_cards 
    @card = Card.all
  end 

  def choose_time_period
    req = Request.new(params[:begin_date], params[:end_date])
    redirect_to cards_show_path 
  end

  def show 
    @card = Card.all
  end 
end 