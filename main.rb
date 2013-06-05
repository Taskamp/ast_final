require 'sinatra'
require 'pry'
require './lib/final_all.rb'

get '/' do
  @title = "Serendipitous Encounters"
	erb :homepage
end

#explanation of images on page 23

get '/prologue' do
	@prologue = "prologue"
	erb :prologue
#to Jan Hein fyi: the prologue is the story which you have read already
end

get '/problem_analysis' do
	erb :problem_analysis
end

get '/acknowledgements' do
	erb :acknowledgements
end

get '/references' do
	erb :references
end

get '/self_reflection' do
	erb :self_reflection
end

get 'literature_review' do
	erb :literature_review
end

#SINATRA P 20, SPECIAL LAY-OUTS, FOR HYPERLINKS????
