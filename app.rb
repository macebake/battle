require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    'Hello Battle!'
    erb :index
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game = Game.start(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.current_turn)
    @game.switch_turn
    if @game.current_turn.lost?
      erb :loser
    else
      erb :attack
    end
  end

  run! if app_file == $0
end
