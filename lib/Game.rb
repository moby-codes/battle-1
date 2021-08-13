class Game
  attr_reader :player1, :player2
  
  def initialize(player1_class:, player2_class:)
    @player1 = player1_class
    @player2 = player2_class
  end
  
  def attack(player)
    player.receive_damage
  end

end