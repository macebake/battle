require_relative 'player'

class Game 
  attr_reader :player_1, :player_2
  DEFAULT_HP = 60  

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.reduce_hp
  end

end