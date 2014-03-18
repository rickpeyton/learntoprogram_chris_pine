puts 'Chapter 7 Arrays'

# Let's write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line), and which then repeats the words back to us in alphabetical order. OK?

puts 'Enter a string of words. When you are finished just press enter'
word = gets.chomp
words = []
words.push word

while word != ''
	word = gets.chomp
	words.push word
end
words.pop

# sortwords = []
# words.each do |wor|
# 	swarray = 0
# 	counter = words.length
# 	acounter = (words.length - 1)
# 	while counter > 0
# 		if (wor > words[(acounter)])
# 			swarray = swarray + 1
# 		end
# 		counter = counter - 1
# 		acounter = acounter - 1
# 	end
# 	sortwords[swarray] = wor
# end

# sortwords.each do |swords|
# 	puts swords
# end

words.sort.each do |wor|
	puts wor
end

#                 Table of Contents                
                                                 
# Chapter 1:  Numbers                        page 1
# Chapter 2:  Letters                       page 72
# Chapter 3:  Variables                    page 118

 # Rewrite your Table of Contents program (from the chapter on methods). Start the program with an array holding all of the information for your Table of Contents (chapter names, page numbers, etc.). Then print out the information from the array in a beautifully formatted Table of Contents.

# book = ['Chapter 1','Numbers','page 1','Chapter 2','Letters','page 72','Chapter 3','Variables','page 118']
# leftlen = 12
# centerlen = 29
# rightlen = 8
# booklen = (book.length / 3)
# chapter = 0
# title = 1
# page = 2
# while booklen > 0
# 	puts (book[chapter] + ':').ljust(leftlen) + book[title].ljust(centerlen) + book[page].rjust(rightlen)
# 	chapter = chapter + 3
# 	title = title + 3
# 	page = page + 3
# 	booklen = booklen - 1
# end

# book = [['Chapter 1','Numbers','page 1'],['Chapter 2','Letters','page 72'],['Chapter 3','Variables','page 118'],['Chapter 4','Rick\'s Adventure','page 135']]
# leftlen = 12
# centerlen = 29
# rightlen = 8
# booklen = (book.length / 3)
# book.each do |bk|
# 	puts (bk[0] + ':').ljust(leftlen) + bk[1].ljust(centerlen) + bk[2].rjust(rightlen)
# end