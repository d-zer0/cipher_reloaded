require 'sinatra'

get '/' do
	text = Text.new(text)
	factor = 0
	result = # Encrypter.new(text, factor) <--- no
	message = result
	erb :index, :locals => {:message = message}
end

module Encrypter
	attr_reader :text, :factor

	def account_for_full_loops_through_alphabet(factor)
		factor % 26
	end

	def to_letters(text)
		text = text.split(//)
		text each do |letter|
			letter = letter.ord
		end
	end

	def is_a_letter(letter)
		(letter >= 65 && letter <= 90) || (letter >= 97 && letter <= 122)
	end

	def is_uppercase(letter)
		x = letter
		if (x >= 65 && x <= 90)
			false #lowercase
		elsif (x >= 97 && x <= 122)
			true
		end
	end

	def encrypt(text) #encrypts a single letter
		letters = text.to_letters
		letters each do |letter|
			if letter.is_a_letter
				if letter.is_uppercase
					if factor.account_for_full_loops_through_alphabet ### GOT TO HERE.
			letter.is_a_letter ? letter.check_if_uppercase
			letter.is_uppercase ? 
		end
	end
end

class TextToEncrypt
	include Encrypter
	attr_reader :text
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
