class Player < ActiveRecord::Base
  has_many :games 
  has_many :participants 
  has_many :games, through: :participants
  
  #name has to be unique
end 