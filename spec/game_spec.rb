require 'game'

describe Game do
  let (:player) {double :player}
  let (:player2) {double :player2}

  subject(:game) { described_class.new }

  describe "#attack" do
    it "can attack the opponent" do
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
    end
  end
end
