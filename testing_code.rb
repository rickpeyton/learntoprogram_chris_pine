def roman_values letter
	roman_hash = {}
	roman_hash [ 'I'] =    1
	roman_hash ['IV'] =    4
	roman_hash [ 'V'] =    5
	roman_hash ['IX'] =    9
	roman_hash [ 'X'] =   10
	roman_hash ['XL'] =   40
	roman_hash [ 'L'] =   50
	roman_hash ['XC'] =   90
	roman_hash [ 'C'] =  100
	roman_hash ['CD'] =  400
	roman_hash [ 'D'] =  500
	roman_hash ['CM'] =  900
	roman_hash [ 'M'] = 1000
	return roman_hash[letter]
end

character = 'CM'
puts "#{roman_values(character)}"