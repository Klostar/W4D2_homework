require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game.rb')
also_reload ('./models/*')

get '/:player1/:player2' do
  game = Game.new(params[:player1],params[:player2])
  # return "#{game.get_result()}"
  @game = game.get_result()
  erb(:result)
end
