# require 'player'

class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def first_player
    @players.first
  end

  def last_player
    @players.last
  end

end
