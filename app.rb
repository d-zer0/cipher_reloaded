require 'sinatra'
require 'sinatra/contrib'

get '/' do
	text = params["text"]
	erb :index, { :locals => params }
end

def encrypt(text)
	(text.ord + 1).chr
end