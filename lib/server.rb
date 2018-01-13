require 'sinatra'
require 'cipher'

get '/' do
	text = Text.new(text)
	factor = 0
	result = # Encrypter.new(text, factor) <--- no
	message = result
	erb :index, :locals => {:message = message}
end


### NOTES ###
# input text and factor to form
# for each char in text, see if it's a letter
# if it's a letter, encrypt it using factor
# objects: text, individual letters
# create text from input, create letters from text, encrypt letters, create text from letters
# OR
# objects: text
# split text, shift each letter in array <--- do this one
