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


=begin
def encrypt(text)
	text = text.split(//)
	text.each do | letter |
		letter = (letter.ord + 1).chr
	end.join("")
	text.inspect
end
=end