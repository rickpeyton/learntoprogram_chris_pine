# One billion seconds... Find out the exact second you were born (if you can). Figure out when you will turn (or perhaps when you did turn?) one billion seconds old. Then go mark your calendar.
# time = Time.mktime(1982, 8, 12)
# time2 = Time.new
# puts time.to_s
# puts time2.to_s
# puts 'I was born ' + (time2 - time).to_s + ' seconds ago.'

# if (time + 1000000000) > time2
#   puts 'I will be 1 billions seconds old on ' + (time + 1000000000).to_s
# else
#   puts 'I was 1 billion seconds old on ' + (time + 1000000000).to_s
# end

# Happy Birthday! Ask what year a person was born in, then the month, then the day. Figure out how old they are and give them a big SPANK! for each birthday they have had.

# puts 'What year were you born?'
# year = gets.chomp.to_i
# puts 'What month?'
# month = gets.chomp.to_i
# puts 'What day?'
# day = gets.chomp.to_i
# time = Time.mktime(year, month, day)
# time2 = Time.new
# age = ((time2 - time)/60/60/24/365).to_i
# puts 'You are ' + age.to_s + ' years old.'
# while age > 1
#   puts 'SPANK!'
#   age = age - 1
# end

# colorHash = {}
# colorHash['strings']  = 'red'
# colorHash['numbers']  = 'green'
# colorHash['keywords'] = 'blue'

# colorHash.each do |codeType, color|
#   puts codeType + ':  ' + color
# end

# class Die
#   def roll
#     1 + rand(6)
#   end
# end

# #  Let's make a couple of dice...
# dice = [Die.new, Die.new]

# #  ...and roll them.
# dice.each do |die|
#   puts die.roll
# end
# def ask question
# 	while true
# 	puts question
# 	answer = gets.chomp.downcase
# 		if answer == 'yes'
# 			return true
# 		elsif answer == 'no'
# 			return false
# 		else
# 			puts 'Please answer yes or no'
# 		end
# 	end
# end
# fname = ask 'Is your name Rick?'
# lname = ask 'Is your last name Peyton?'
# if fname == true
# 	puts 'Your first name is Rick'
# else
# 	puts 'Your first name is not Rick'
# end
# if lname == true
# 	puts 'Your last name is Peyton'
# else
# 	puts 'Your last name is not Peyton'
# end