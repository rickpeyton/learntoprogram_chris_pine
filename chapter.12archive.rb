########## SIMPLE PROGRAM TO CALCULATE YOUR AGE AND SPANK YOU

puts 'What year were you born?'
year_born = gets.chomp.to_i
puts 'What month were you born?'
month_born = gets.chomp.to_i
puts 'What day of the month were you born on?'
day_born = gets.chomp.to_i

age = Time.gm(year_born, month_born, day_born)
years = ((Time.now - age) / 60 / 60 / 24 / 365).to_i

puts "You are #{years} years old!"
while years > 0
	puts 'Spank!'
	years = years - 1
end

########## FANCY MODERN ROMAN NUMERALS TO NUMBERS PROGRAM

# Convert roman numerals to numbers
# Reject strings that are not avalid roman numerals

# the numeral I can be placed before V or X to make 4 units (IV) or 9 units (IX respectively)
# X can be placed before L or C to make 40 (XL) or 90 (XC respectively)
# C can be placed before D or M to make 400 (CD) or 900 (CM) according to the same pattern[5]

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

def converter string, length, total
	if length > 1
		first = roman_values(string[0])
		second = roman_values(string[1])
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
		total = total + roman_values(string[0])
		return total
	end
	if string.length > 0
		converter(string, length, total)
	else
		return total
	end
end

# Request a roman numeral from the user and verify it is valid.
def get_a_numeral
	puts 'Please enter a roman numeral to be converted.'
	roman_numeral = gets.chomp.upcase
end

valid = false
while valid == false
	roman_numeral = get_a_numeral
	x = roman_numeral.length
	while x > 0
		if roman_values(roman_numeral[x - 1]) == nil
			roman_numeral = get_a_numeral
			x = roman_numeral.length
		else
			x = x - 1
		end
	end
	valid = true
end

# get the lengh of the roman numeral string
roman_numeral_len = roman_numeral.length

# send the roman_numeral or length into converter method
modern_number = converter(roman_numeral, roman_numeral_len, 0)

puts modern_number