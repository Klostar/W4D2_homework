require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game.rb'

class GameTest < Minitest::Test

def setup()
  @game1 = Game.new('paper','rock')
  @game2 = Game.new('rock','scissors')
  @game3 = Game.new('scissors','paper')
  @game4 = Game.new('paper','paper')
  @game5 = Game.new('scissors','scissors')
  @game6 = Game.new('rock','rock')
end

def test_game_is_draw
  assert_equal("It's a Draw!",@game4.get_result)
end

def test_scissors_wins
  assert_equal("Scissors Wins",@game3.get_result)
end

def test_paper_wins
  assert_equal("Paper Wins", @game1.get_result)
end

def test_rock_wins
  assert_equal("Rock Wins",@game2.get_result)
end
end
