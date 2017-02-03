require 'sinatra'
require './config'

get '/' do
	erb :start
end

post '/game' do
	"mapa"
end