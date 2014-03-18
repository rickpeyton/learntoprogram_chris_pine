# puts 1 > 2
# puts 2 > 1
# command = ''

# while command != 'bye'
#   command = gets.chomp
#   puts command
# end

# puts 'Come again soon!'
# puts 'What number would you like me to count to?'
# countto = gets.chomp
# var1 = 1

# while var1 <= countto.to_i
# 	#add 1 to var and print to screen
# 	puts var1
# 	var1 = var1 + 1
# end

# puts 'You have finished counting.'

# 99 bottles of beer program
# bottles =  99
# while bottles >= 1
# 	puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer'
# 	bottles = bottles - 1
# 	puts 'if one of those bottles should happen to fall, ' + bottles.to_s + ' bottles of beer on the wall'
# end

#  Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with  HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. (This part is optional, and would be much easier if you read the section on Ruby's random number generator at the end of the methods chapter.) You can't stop talking to grandma until you shout BYE.
# Hint: Don't forget about  chomp!  'BYE'with an Enter is not the same as 'BYE' without one!
# Hint 2: Try to think about what parts of your program should happen over and over again. All of those should be in your while loop.

# Extend your Deaf Grandma program: What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma.
# puts 'The Deaf Grandma Program v2.0'
# puts 'Say something to Grandma'
# bye_count = 0

# while bye_count < 3
# 	granny_speak = gets.chomp
# 	granny_speak_caps = granny_speak.upcase
# 	if granny_speak == 'BYE'
# 		puts 'HUH?!'
# 		bye_count = bye_count + 1
# 	else
# 		bye_count = 0
# 		if granny_speak != granny_speak_caps
# 			puts 'HUH?!  SPEAK UP, SONNY!'
# 		else
# 			var1 = rand(21) + 1930
# 			puts 'NO, NOT SINCE ' + var1.to_s + ' !'
# 		end
# 	end
# end

# puts 'Bye, Sonny!'

# puts 'The Deaf Grandma Program v1.0'
# puts 'Say something to Grandma'
# granny_speak = gets.chomp
# granny_speak_caps = granny_speak.upcase

# while granny_speak != 'BYE'
# 	if granny_speak != granny_speak_caps
# 		puts 'HUH?!  SPEAK UP, SONNY!'
# 	else
# 		var1 = rand(21) + 1930
# 		puts 'NO, NOT SINCE ' + var1.to_s + ' !'
# 	end
# 	granny_speak = gets.chomp
# 	granny_speak_caps = granny_speak.upcase
# end

# puts 'Bye, Sonny!'

# Leap Years. Write a program which will ask for a starting year and an ending year, and then puts all of the leap years between them (and including them, if they are also leap years). Leap years are years divisible by four (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years). (Yes, it's all pretty confusing, but not as confusing has having July in the middle of the winter, which is what would eventually happen.)

# puts 'Leap Year Program 1.0'
# puts 'Enter a starting year.'
# syear = gets.chomp.to_i
# puts 'Enter an ending year.'
# eyear = gets.chomp.to_i
# puts ' '
# while syear <= eyear
# 	every4 = syear % 4
# 	every100 = syear % 100
# 	every400 = syear % 400
# 	if every4 == 0
# 		if (every100 == 0 and every400 != 0)
# 			puts syear.to_s + ' was not a leap year.'
# 		else
# 			puts syear.to_s + ' is a leap year.'
# 		end
# 	else
# 		# Do Nothing
# 	end
# 	syear = syear + 1
# end
