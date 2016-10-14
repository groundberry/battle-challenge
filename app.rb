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
    redirect '/start_game'
  end

  get '/start_game' do
    @game = $game
    erb :start_game
  end

  get '/player_1_turn' do
    @game = $game
    @game.attack(@game.player2)
    erb :player_1_turn
  end

  get '/player_2_turn' do
    @game = $game
    @game.attack(@game.player1)
    erb :player_2_turn
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
