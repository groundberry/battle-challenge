require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:Player1], params[:Player2])
    redirect '/start-game'
  end

  get '/start-game' do
    @game = $game
    erb :start_game
  end

  get '/player-1-turn' do
    @game = $game
    @game.attack(@game.player2)
    erb :player_1_turn
  end

  get '/player-2-turn' do
    @game = $game
    @game.attack(@game.player1)
    erb :player_2_turn
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
