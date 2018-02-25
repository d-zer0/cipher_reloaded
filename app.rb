require 'sinatra'
require 'sinatra/contrib'

get '/' do
	text = params["text"]
	erb :index, { :locals => params }
end

def encrypt(text)
	text = text.split.map { |letter|  (letter.ord+1).chr}
	text.join("")
end