# Old-school Roman numerals. In the early days of Roman numerals, the Romans didn’t bother with any of this new-fangled subtraction “IX” nonsense. No sir, it was straight addition, biggest to littlest—so 9 was written “VIIII,” and so on. Write a method that when passed an integer between 1 and 3000 (or so) returns a string containing the proper old-school Roman numeral. In other words, old_roman_numeral 4 should return 'IIII'. Make sure to test your method on a bunch of different numbers. Hint: Use the integer division and modulus methods on page 37.
# For reference, these are the values of the letters used:
# I =1 V=5 X=10 L=50 C=100 D=500 M=1000

# puts 'Roman Numeral Conversion Program v1.0'
# puts 'Enter a number between 1 and 3000 for conversion.'
# to_convert = gets.chomp.to_i
# def old_roman_numeral y
# 	string = ''
# 	string = 'M' * (y / 1000)
# 	string = string + ('D' * (y % 1000 / 500))
# 	string = string + ('C' * (y % 500  / 100))
# 	string = string + ('L' * (y % 100  / 50 ))
# 	string = string + ('X' * (y % 50   / 10 ))
# 	string = string + ('V' * (y % 10   / 5  ))
# 	string = string + ('I' * (y % 5    / 1  ))
# end
# converted = old_roman_numeral to_convert
# puts converted

# “Modern” Roman numerals. Eventually, someone thought it would be terribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. As a result of this development, you must now suffer. Rewrite your previous method to return the new-style Roman numerals so when someone calls roman_numeral 4, it should return 'IV'.

# Symbols are placed from left to right in order of value, starting with the largest. However, in a few specific cases,[2] to avoid four characters being repeated in succession (such as IIII or XXXX) these can be reduced using subtractive notation as follows:[3][4]
# the numeral I can be placed before V and X to make 4 units (IV) and 9 units (IX respectively)
# X can be placed before L and C to make 40 (XL) and 90 (XC respectively)
# C can be placed before D and M to make 400 (CD) and 900 (CM) according to the same pattern[5]

# puts 'Modern Roman Numeral Conversion Program v1.0'
# puts 'Enter a number between 1 and 3000 for conversion.'
# to_convert = gets.chomp.to_i
# def roman_numeral y
# 	  ones = (y %   10 /   1)
# 	  tens = (y %  100 /  10)
# 	  huns = (y % 1000 / 100)
# 	string = ''
# 	string = 'M' * (y / 1000)
# 	if huns == 9
# 		string = string + 'CM'
# 	else
# 		if huns == 4
# 			string = string + 'CD'
# 		else
# 			string = string + ('D' * (y % 1000 / 500))
# 			string = string + ('C' * (y % 500  / 100))	
# 		end
# 	end
# 	if tens == 9
# 		string = string + ('XC')
# 	else
# 		if tens == 4
# 			string = string + ('XL')
# 		else
# 			string = string + ('L' * (y % 100  / 50 ))
# 			string = string + ('X' * (y % 50   / 10 ))
# 		end
# 	end
# 	if ones == 9
# 		string = string + ('IX')
# 	else
# 		if ones == 4
# 			string = string + ('IV')
# 		else
# 			string = string + ('V' * (y % 10   / 5  ))
# 			string = string + ('I' * (y % 5    / 1  ))
# 		end
# 	end
# end
# converted = roman_numeral to_convert
# puts converted

def englishNumber number
  if number < 0  #  No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  
  #  No more special cases!  No more returns!
  
  numString = ''  #  This is the string we will return.
  
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  #  "left" is how much of the number we still have left to write out.
  #  "write" is the part we are writing out right now.
  #  write and left... get it?  :)
  left  = number
  write = left/1000000          #  How many millions left to write out?
  left  = left - write*1000000  #  Subtract off those millions.
  
  if write > 0
    #  Now here's a really sly trick:
    millions  = englishNumber write
    numString = numString + millions + ' million'
    
    if left > 0
      #  So we don't write 'two millionfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000          #  How many thousands left to write out?
  left  = left - write*1000  #  Subtract off those thousands.
  
  if write > 0
    #  Now here's a really sly trick:
    thousands  = englishNumber write
    numString = numString + thousands + ' thousand'
    
    if left > 0
      #  So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/100          #  How many hundreds left to write out?
  left  = left - write*100  #  Subtract off those hundreds.
  
  if write > 0
    #  Now here's a really sly trick:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    #  That's called "recursion".  So what did I just do?
    #  I told this method to call itself, but with "write" instead of
    #  "number".  Remember that "write" is (at the moment) the number of
    #  hundreds we have to write out.  After we add "hundreds" to "numString",
    #  we add the string ' hundred' after it.  So, for example, if
    #  we originally called englishNumber with 1999 (so "number" = 1999),
    #  then at this point "write" would be 19, and "left" would be 99.
    #  The laziest thing to do at this point is to have englishNumber
    #  write out the 'nineteen' for us, then we write out ' hundred',
    #  and then the rest of englishNumber writes out 'ninety-nine'.
    
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end
  
  write = left/10          #  How many tens left to write out?
  left  = left - write*10  #  Subtract off those tens.
  
  if write > 0
    if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of "twelve",
      #  we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      #  The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
      
      #  Since we took care of the digit in the ones place already,
      #  we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end
    
    if left > 0
      #  So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end
  
  write = left  #  How many ones left to write out?
  left  = 0     #  Subtract off those ones.
  
  if write > 0
    numString = numString + onesPlace[write-1]
    #  The "-1" is because onesPlace[3] is 'four', not 'three'.
  end
  
  #  Now we just return "numString"...
  numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1999999)
puts englishNumber(1000000000000)

# Expand upon englishNumber. First, put in thousands. So it should return 'one thousand' instead of 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.