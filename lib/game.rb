require_relative 'player'
class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def attack(player)
    player.reduce_hp
  end

  def killed?
    @player1.hp <= 0 || @player2.hp <= 0
  end
end
