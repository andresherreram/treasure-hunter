require 'sinatra'
require './config'

get '/' do
	erb :start
end

get '/game' do
	session[:mapa] = Mapa.new
	erb :game
end
