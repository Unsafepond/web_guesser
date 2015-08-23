require 'sinatra'
require "sinatra/reloader"



NUMBER = rand(100)

get '/' do
	guess = params["guess"].to_i
	message = check_guess(guess)
	erb :index, :locals => {:number => NUMBER, :message => message}
end

def check_guess(guess)
if guess > (NUMBER+5)
		"Way Too High!!\n\n"
	elsif guess < (NUMBER-5)
		"Way Too Low!!\n\n"
	elsif guess > NUMBER
		"Too High!\n\n"
	elsif guess < NUMBER
		"Too Low!\n\n"
	else
		"The SECRET NUMBER is #{guess}"
	end
end
