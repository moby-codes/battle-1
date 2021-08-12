require 'sinatra/base'

class Battle < Sinatra::Base 
enable :sessions
 
  get '/' do
    session[:player2_hp] = 100

    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player2_hp = session[:player2_hp]
    erb :play
  end




  run! if app_file == $0
end