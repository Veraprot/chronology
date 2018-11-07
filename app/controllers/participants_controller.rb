class ParticipantsController < ApplicationController 
  #view participant stats 
  #index show 
  def new 
    @game = Game.all.last
    @participant = Participant.new
  end 

  def create 
    game = Game.all.last
    if game.number_of_players < 2
      player = Player.find_or_create_by(username: params[:participant][:player_name])
      Participant.create(game_id: game.id, score: 0, player: player)

      game.number_of_players += 1
      game.save
      redirect_to new_participant_path
    else 
      redirect_to games_play_path
    end 
  end 
end 