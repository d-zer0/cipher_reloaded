require 'sinatra'
require 'sinatra/contrib'

get '/' do
	text = params["text"]
	erb :index, { :locals => params }
end

def encrypt(text)
	text.split("").map { |letter|  (letter =~ /[A-Za-z]/ ? letter.ord+1 : letter.ord).chr}.join
end