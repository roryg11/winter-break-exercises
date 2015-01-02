class Game
  attr_reader :comp_turn, :user_turn

  def initialize
    @comp_turn = comp_turn
    @user_turn = user_turn
  end

  def directions
    puts "Classic Rock Paper Scissors \n
    Rock beats Scissors, Scissors beats Paper and Paper beats Rock
    Throw out your chosen symbol and the computer will play against you. \n
    Ready to Play?"
  end

  def user_input(sign)
    if sign.downcase == "rock" || sign.downcase == "paper" || sign.downcase == "scissors"
      @user_turn = sign
    else
      puts "Please enter a valid sign"
    end
  end

  def comp_sign_gen
    @comp_turn = ["Rock", "Paper", "Scissors"].sample
    @comp_turn
  end

  def round_winner

    if @user_turn.downcase == "rock" && @comp_turn.downcase == "scissors"
      "You win!"
    elsif @user_turn.downcase == "paper" && @comp_turn.downcase == "rock"
      "You win!"
    elsif @user_turn.downcase == "scissors" && @comp_turn.downcase == "paper"
      "You win!"
    elsif @user_turn.downcase == "rock" && @comp_turn.downcase == "paper"
      "computer wins!"
    elsif @user_turn.downcase == "paper" && @comp_turn.downcase == "scissors"
      "computer wins!"
    elsif @user_turn.downcase == "scissors" && @comp_turn.downcase == "rock"
      "computer wins!"
    else
      "it's a draw"
    end
  end

  def run
    self.directions

    puts "Rock, Paper, Scissors shoot..."

    sign = gets.chomp
    user_input(sign)
    comp_sign_gen

    puts "You played #{user_turn}, the computer played #{comp_turn}."
    puts "#{user_turn} vs. #{comp_turn} means #{round_winner}"

  end
end
