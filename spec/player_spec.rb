require 'player'

describe Player do
  subject(:player) { described_class.new("John") }
  subject(:player2) { described_class.new("Mary") }

  describe "#initialize" do
    it "returns the Player's name" do
      expect(player.name).to eq "John"
    end

    it "starts the game with an hp of 100" do
      expect(player.hp).to eq 100
    end
  end

  describe "#attack" do
    it "can attack the opponent" do
      expect(player).to respond_to(:attack)
    end

    it "reduces the opponant hp when attacked" do
      expect{ player.attack(player2) }.to change{ player2.hp }.by (-10)
    end
  end

  describe "#reduce_hp" do
    it "reduces Player 2's hp by 10" do
      expect{ player.reduce_hp }.to change{ player.hp }.by (-10)
    end
  end
end
