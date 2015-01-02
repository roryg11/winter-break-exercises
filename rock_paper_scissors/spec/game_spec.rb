require 'spec_helper'
require 'game'

describe Game do
  it "#directions" do
    game = Game.new

    expected= ("Classic Rock Paper Scissors \n
    Rock beats Scissors, Scissors beats Paper and Paper beats Rock
    Throw out your chosen symbol and the computer will play against you. \n
    Ready to Play?")

    expect(game.directions).to include(expected)
  end

  it "#user_turn" do
    game = Game.new

    game.user_input("Rock")

    expect(game.user_turn).to eq("Rock")
  end

  it "#comp_sign_gen" do
    game = Game.new

    game.comp_sign_gen

    expect(["Rock", "Paper", "Scissors"]).to include(game.comp_turn)
  end

  it "#round_winner" do
    game = Game.new

    game.user_input("Scissors")
    game.comp_sign_gen

    expect(["user wins!", "computer wins!", "it's a draw"]).to include(game.round_winner)
  end
end
