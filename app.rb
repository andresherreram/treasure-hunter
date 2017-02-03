require 'sinatra'
require './config'
require './lib/mapa'

get '/' do
	erb :start
end

get '/game' do
	session[:mapa] = Mapa.new
	session["comandos"] = ""
	erb :game
end

post '/game' do
	if params['comandos']
		session["comandos"] += params['comandos']
	else
		comando = params['campo-de-comandos']
		session[:mapa].ejecutar(comando)
		session['comandos'] = ''
	end

	erb :game
end