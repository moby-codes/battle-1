require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/Player.rb'
require_relative './lib/Game.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
 
  get '/' do
    erb :index
  end

  post '/names' do
    player1 =Player.new(params[:player1])
    player2 =Player.new(params[:player2])
    $game = Game.new(player1_class: player1, player2_class: player2)
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    erb :attack
  end

  get '/play' do
    @game = $game
    #@player2_hp = session[:player2_hp]
    @last_move = session[:last_move]
    erb :play
  end

  run! if app_file == $0
end