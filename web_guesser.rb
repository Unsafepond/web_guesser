require 'sinatra'
require "sinatra/reloader"
number = rand(100)
get '/' do
	guess = params["guess"].to_i
	if guess > (number+5)
		message = "Way Too High!!\n\n"
	elsif guess < (number-5)
		message = "Way Too Low!!\n\n"
	elsif guess > number
		message = "Too High!\n\n"
	elsif guess < number
		message = "Too Low!\n\n"
	end
	erb :index, :locals => {:number => number, :message => message}
end