class Game < ActiveRecord::Base
  has_many :players
  has_many :participants 
  has_many :players, through: :participants
  has_many :cards
end 