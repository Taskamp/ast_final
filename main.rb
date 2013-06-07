require 'sinatra'
require 'pry'
require './lib/final_all.rb'
require 'config.ru'

get '/' do
	erb :homepage
end

get '/Onezerozerozero' do
	@prologue = "Onezerozerozero"
	erb :Onezerozerozero
#the introductory story
end

get '/Oneonezerozero' do
	@problem_analysis1 = "Oneonezerozero"
	erb :Oneonezerozero
end

get '/Zerozerozeroone' do
	@problem_analysis2 = "Zerozerozeroone"
	erb :Zerozerozeroone
end

get '/Zerozeroonezero' do
	@literature_review1 = "Zerozeroonezero"
	erb :Zerozeroonezero
end

get '/Onezeroonezero' do
	@literature_review2 = "Onezeroonezero"
	erb :Onezeroonezero
end

get '/Zerooneoneone' do
	@acknowledgements = "Zerooneoneone"
	erb :Zerooneoneone
end

get '/Oneoneoneone' do
	@references = "Oneoneoneone"
	erb :Oneoneoneone
end

get '/Zerooneonezero' do
	@self_reflection = "Zerooneonezero"
	erb :Zerooneonezero
end
