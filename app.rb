require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

post '/attack' do
  @game = $game
  @game.attack(@game.last_player)
  erb(:attack)
end
get '/turn1' do
  @game = $game
  erb(:turn1)
end
 post '/turn1' do
   @game = $game
  #  @game.attack(@game.first_player)
   redirect '/play'
 end
 # post '/turn2' do
 #   @game = $game
 #   erb(:turn2)
 # end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
