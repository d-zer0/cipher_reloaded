require 'sinatra'
require 'sinatra/contrib'
require_relative 'views/shared/encrypt'

get '/' do
	text = params["text"]
	shift = params["shift"]
	encrypted = encrypt(text, shift)
	erb :index, locals: {text: text, shift: shift, encrypted: encrypted}
end