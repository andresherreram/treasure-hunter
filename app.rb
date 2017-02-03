require 'sinatra'
require './config'

get '/' do
	erb :start
end

get '/game' do
	erb :game
end
