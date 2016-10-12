require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    $Player1 = Player.new(params[:Player1])
    $Player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    Game.new.attack($Player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
