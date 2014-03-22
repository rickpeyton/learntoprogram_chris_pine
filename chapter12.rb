# Convert roman numerals to numbers
# Reject strings that are not avalid roman numerals

# the numeral I can be placed before V or X to make 4 units (IV) or 9 units (IX respectively)
# X can be placed before L or C to make 40 (XL) or 90 (XC respectively)
# C can be placed before D or M to make 400 (CD) or 900 (CM) according to the same pattern[5]

def converter string, length, total
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

	if length > 1
		first = roman_hash[string[0]]
		second = roman_hash[string[1]]
		if second > first
			length = length - 2
			total = total + (second - first)
			string = string[2, (length)]
		else
			length = length - 1
			total = total + first
			string = string[1, (length)]
		end
	else
		total = total + roman_hash[string[0]]
		return total
	end
	if string.length > 0
		converter(string, length, total)
	else
		return total
	end
end

# Request a roman numberal from the user and verify it is valid.
puts 'Please enter a roman numeral to be converted.'
roman_numeral = gets.chomp.upcase

# get the lengh of the roman numeral string
roman_numeral_len = roman_numeral.length

# send the roman_numeral or length into converter method
modern_number = converter(roman_numeral, roman_numeral_len, 0)

puts modern_number