require 'spec_helper'
require 'guessing_game'

describe GuessingGame do
  it "picks a number between 1 and 100" do
    game = GuessingGame.new

    expect(game.number.class).to eq(Fixnum)
  end

  it "compares input with that number and tells you if guess is higher or lower" do
    game = GuessingGame.new

    expect(game.guess(50)).to eq
  end
end
