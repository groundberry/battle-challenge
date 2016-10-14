require 'game'

describe Game do
  subject(:game) { described_class.new('John', 'Mary') }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1.name).to eq 'John'
    end

    it 'is an instance of Player' do
      expect(game.player1).to be_an_instance_of(Player)
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2.name).to eq 'Mary'
    end

    it 'is an instance of Player' do
      expect(game.player2).to be_an_instance_of(Player)
    end
  end

  describe "#attack" do
    it "can attack the opponent" do
      expect(game.player2).to receive(:reduce_hp)
      game.attack(game.player2)
    end
  end
end
