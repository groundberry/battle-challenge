require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let (:player1) { double :player1 }
  let (:player2) { double :player2 }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq player2
    end
  end

  describe "#attack" do
    it "can attack the opponent" do
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
    end
  end
end
