require 'sinatra'
require './config'
require './lib/mapa'

get '/' do
	erb :start
end

get '/game' do
	session[:mapa] = Mapa.new
	erb :game
end

post '/game' do
	comando = params['campo-de-comandos']
	session[:mapa].ejecutar(comando)

	erb :game
end