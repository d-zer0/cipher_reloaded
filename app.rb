require 'sinatra'
require 'sinatra/contrib'

get '/' do
	text = params["text"]
	erb :index, { :locals => params }
end

def encrypt(text, shift=1)
	@shift = shift % 26

	text.split("").map do |character|
		if character =~ /[A-Za-z]/
			if (character.ord + @shift).chr =~ /[A-Za-z]/
				(character.ord + @shift).chr
			else
				(character.ord + (shift % 26) - 26).chr
			end
		else
			character
		end
	end.join
end