require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/opponent'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    $opponent = Opponent.new
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @option = session[:option]
    @opponent = $opponent.option.sample
    erb(:play)
  end

  post '/play' do
    session[:option] = params[:option]
    session[:opponent] = :scissors
    redirect '/play'
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
