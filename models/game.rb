class Game

  attr_reader :player1, :player2

  def initialize(player1,player2)
    @player1 = player1.downcase
    @player2 = player2.downcase
  end

  def get_result
    if @player1 == @player2
      return "It's a Draw!"
    elsif @player1 == "scissors" && @player2 == "paper"
      return "Player 1 wins by picking Scissors"
    elsif @player1 == "rock" && @player2 == "scissors"
      return "Player 1 wins by picking Rock"
    elsif @player1 == "paper" && @player2 == "rock"
      return "Player 1 wins by picking Paper"
    elsif @player2 == "scissors" && @player1 == "paper"
      return "Player 2 wins by picking Scissors"
    elsif @player2 == "rock" && @player1 == "scissors"
      return "Player 2 wins by picking Rock"
    elsif @player2 == "paper" && @player1 == "rock"
      return "Player 2 wins by picking Paper"
    else return "No One Wins! You didn't pick an available option"
    end
  end

end
 
