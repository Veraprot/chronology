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
    game = Game.all.last
    @participants = game.participants
    generate_question
    render "play"
  end 

  def generate_question
    @rand_id = rand(Card.count)
    @random_card = Card.find_by(id: @rand_id) 
  end 

  def skip_question 
    generate_question
    #theres a lot of weird info in the api so let users skip the question 
  end 
end 