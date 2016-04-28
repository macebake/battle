# require 'player'

class Game

  attr_reader :current_turn, :not_current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @not_current_turn = player2
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

  def switch_turns
    @not_current_turn = @current_turn
    @current_turn = opponent_of(current_turn)
  end

  private
  def opponent_of(the_player)
    @players.select {|player| player != the_player}.first
  end

end
