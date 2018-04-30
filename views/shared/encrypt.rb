def encrypt(text, shift) 
	if (text && shift) != nil
		shift = shift.to_i % 26
		text.split("").map do |character|
			if character =~ /[A-Za-z]/
				if (character.ord + shift).chr =~ /[A-Za-z]/
					(character.ord + shift).chr
				else
					(character.ord + (shift % 26) - 26).chr
				end
			else
				character
			end
		end.join
	end
end