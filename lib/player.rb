class Player

  attr_reader :player_name
  attr_accessor :hit_points
  DEFAULT_HP = 100
  DEFAULT_DAMAGE = 10

  def initialize(player_name)
    @player_name = player_name
    @hit_points = DEFAULT_HP
  end

  def receive_damage
    @hit_points -= DEFAULT_DAMAGE
  end

end
