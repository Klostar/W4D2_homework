class Game

  attr_reader :player1, :player2

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end

  def get_result
    if @player1 == @player2
      return "It's a Draw!"
    elsif @player1 == "scissors" && @player2 == "paper"
      return "Scissors Wins"
    elsif @player1 == "rock" && @player2 == "scissors"
      return "Rock Wins"
    elsif @player1 == "paper" && @player2 == "rock"
      return "Paper Wins"
    elsif @player2 == "scissors" && @player1 == "paper"
      return "Scissors Wins"
    elsif @player2 == "rock" && @player1 == "scissors"
      return "Rock Wins"
    elsif @player2 == "paper" && @player1 == "rock"
      return "Paper Wins"
    else return "No One Wins! You didn't pick an available option"
    end
  end

end
