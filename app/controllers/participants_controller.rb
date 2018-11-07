class ParticipantsController < Application_controller 
  #view participant stats 
  #index show 
  def new 
    @participant = Participant.new
  end 

  def create 
    player = Player.find_or_create_by(username: params[:participant][:player_name])
    Participant.create(game_id: 1, score: 0, player: player)
  end 
end 