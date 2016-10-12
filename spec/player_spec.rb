require 'player'

describe Player do
  subject(:player1) { described_class.new("John") }
  subject(:player2) { described_class.new("Mary") }

  describe "#initialize" do
    it "returns the Player's name" do
      expect(player1.name).to eq "John"
    end

    it "starts the game with an hp of 100" do
      expect(player1.hp).to eq 100
    end
  end




end
