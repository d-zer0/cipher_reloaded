module Encrypter
	attr_reader :text, :factor

	def to_letters(text)
		text = @text.split(//)
		text.each do |letter|
			letter = letter.ord
		end
	end

	def is_a_letter(letter)
		(letter.text >= 65 && letter.text <= 90) || (letter.text >= 97 && letter.text <= 122)
	end

	def is_uppercase(letter)
		x = letter
		if (x >= 65 && x <= 90)
			false #lowercase
		elsif (x >= 97 && x <= 122)
			true
		end
	end

	def shift_by(letter, shift)
		letter.text + shift
	end


	def encrypt(factor) #encrypts a single letter
		letters = self.text.split(//)
		puts letters.inspect
		letters.each do |letter|
		  letter = Encryptable.new(letter.ord)
		  if letter.is_a_letter(letter)
				shift = factor % 26
				letter = letter.text + shift
			end
		end
	end
end

class Encryptable
	include Encrypter
	attr_reader :text
	
	def initialize(text)
	  @text = text
	end
end

hello = Encryptable.new("Hello")

hello.encrypt(100)