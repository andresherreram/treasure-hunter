require 'sinatra'
require './config'

get '/' do
	erb :start
end

get '/game' do
	"mapa instrucciones"
end

post '/game' do
	"mapa"
end