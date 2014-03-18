# var1 = 2
# var2 = '5'
# puts var1 + var2
# puts var1.to_s + var2
# puts var1 + var2.to_i
# puts var1 + var2.to_f
# puts gets
# puts 'Hello there! What\'s your name?'
# name = gets.chomp
# puts 'Hello ' + name + ' that is an awesome name!'
# puts 'Hello there, and what\'s your name?'
# name = gets.chomp
# puts 'Your name is ' + name + '?  What a lovely name!'
# puts 'Pleased to meet you, ' + name + '.  :)'
puts 'What is your first name?'
first = gets.chomp
puts 'What is your middle name?'
middle = gets.chomp
puts 'What is your last name?'
last = gets.chomp
puts 'Your name is ' + first + ' ' + middle + ' ' + last + '.'
puts 'What is your age?'
number = gets.chomp
number2 = number.to_i + 1
puts 'I know you think ' + number + ' is a cool age, but ' + number2.to_s + ' is so much better!'