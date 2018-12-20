class Participant < ActiveRecord::Base
  belongs_to :player 
  belongs_to :game 

  def player_name=(username)
    self.player = Player.find_or_create_by(username: name)
  end

  def player_name
     self.player ? self.player.username : nil
  end
end 