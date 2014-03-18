# puts 'Hello '. + 'world.'
# puts 5.+5
# puts (10. * 9). + 9
# puts 'What is your full name?'
# name = gets.chomp
# puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'
# var1 = 'Rick'
# var2 = var1.length + 10
# puts 'The length of ' + var1 + ' + 10 equals ' + var2.to_s
# puts 'What is your first name?'
# first = gets.chomp
# puts 'What is your middle name?'
# middle = gets.chomp
# puts 'What is your last name?'
# last = gets.chomp
# puts 'Your name is ' + first + ' ' + middle + ' ' + last
# puts 'There are ' + first.length.to_s + ' characters in ' + first.capitalize
# puts 'There are ' + middle.length.to_s + ' characters in ' + middle.capitalize
# puts 'and there are ' + last.length.to_s + ' characters in ' + last.capitalize
# totalname = first.length + middle.length + last.length
# puts 'There are a total of ' + totalname.to_s + ' characters in your name.'

# lineWidth = 36
# puts(                'Old Mother Hubbard'.center(lineWidth))
# puts(               'Sat in her cupboard'.center(lineWidth))
# puts(         'Eating her curds an whey,'.center(lineWidth))
# puts(          'When along came a spider'.center(lineWidth))
# puts(         'Which sat down beside her'.center(lineWidth))
# puts('And scared her poor shoe dog away.'.center(lineWidth))

# I want a raise., it should yell back WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!!
# puts 'You enter the angry bosses office. What do you say to him?'
# var1 = gets.chomp
# puts 'WHADDAYA MEAN "' + var1 + '"?!? YOU\'RE FIRED!!'

#  Table of Contents                
                                                 
# Chapter 1:  Numbers                        page 1
# Chapter 2:  Letters                       page 72
# Chapter 3:  Variables                    page 118 (49)
# linelength = 49
# puts 'Table of Contents'.center(linelength)
# puts 'Chapter 1:  Numbers'.ljust(linelength/2) + 'page 1'.rjust(linelength/2)
# puts 'Chapter 2:  Letters'.ljust(linelength/2) + 'page 72'.rjust(linelength/2)
# puts 'Chapter 3:  Variables'.ljust(linelength/2) + 'page 118'.rjust(linelength/2)

# puts 5**2
# puts 5**0.5
# puts 7/3
# puts 7%3.0
# puts 365%7.0
# puts 10.0%4.0

puts 'Rick\'s Powerball Jackpot Generator'
srand 101
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts 'and your Powerball is ' + (rand(50)).to_s
srand 101
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts 'and your Powerball is ' + (rand(50)).to_s
srand 102
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts (rand(50))
puts 'and your Powerball is ' + (rand(50)).to_s