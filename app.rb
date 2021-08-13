require 'sinatra/base'

class Battle < Sinatra::Base 
enable :sessions
 
  get '/' do
    session[:player2_hp] = 100

    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/attack' do
    @player1 = $player1.name 
    @player2 = $player2.name
    erb :attack
  end

  get '/play' do
    @player1 = $player1.name 
    @player2 = $player2.name
    #@player2_hp = session[:player2_hp]
    @last_move = session[:last_move]
    erb :play
  end

  run! if app_file == $0
end