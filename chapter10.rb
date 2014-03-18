# def ask_recusively question
# 	puts question
# 	answer = gets.chomp.downcase
# 	if answer == 'yes'
# 		true
# 	elsif answer == 'no'
# 		false
# 	else
# 		puts 'Please answer yes or no'
# 		ask_recusively question
# 	end
# end
# ask_recusively 'Do you wet the bed?'

# Enter a number  between 1 and 10

# def number_check question
# 	puts question
# 	answer = gets.chomp.to_i
# 	if answer > 0 and answer < 11
# 		answer
# 	else
# 		puts question
# 		number_check question
# 	end
# end
# save = number_check 'Enter a number between 1 and 10 to add to 9'
# puts '9 plus ' + save.to_s + ' equals ' + (save + 9).to_s

# 99 bottles of beer with recursion

# def bottles_of_beer number
# 	if number > 0
# 		puts number.to_s + ' bottles of beer on the wall, ' + number.to_s + ' bottles of beer.'
# 		puts 'Take one down, pass it around, ' + (number - 1).to_s + ' bottles of beer on the wall.'
# 		bottles_of_beer (number - 1)
# 	end
# end
# puts 'How many bottles of beer are on the wall?'
# bottles = gets.chomp.to_i
# bottles_of_beer bottles

# puts 'Civilization Map Program v1.0'
# M = 'land'
# o = 'water'
# world = [
# 	[M,M,o,o,o,o,o,o,o,o,o],
# 	[M,M,M,o,o,o,o,o,o,o,o],
# 	[o,o,M,o,o,o,o,o,o,o,o],
# 	[o,o,o,M,o,o,o,o,o,o,o],
# 	[o,o,o,M,M,M,o,o,o,o,o],
# 	[o,o,o,M,M,M,M,M,M,M,M],
# 	[o,o,o,o,M,o,o,o,o,o,o],
# 	[o,o,o,o,o,o,o,o,o,o,o],
# 	[o,o,o,o,o,o,o,o,o,o,o],
# 	[o,o,o,o,o,o,o,o,o,o,o],
# 	[o,o,o,o,o,o,o,o,o,o,o]
# ]
# def continent_size world, x, y
# 	if (x < 0) or (x > 11)
# 		return 0
# 	elsif (y < 0) or (y > 11)
# 		return 0
# 	end
# 	if world[y][x] != 'land'
# 		# Either it's water or we already counted it
# 		# but either way, we don't want to count it now.
# 		return 0
# 	end
# 	# So first we count this tile...
# 	size = 1
# 	world[y][x] = 'counted land'

# 	# ... then we count all of the neighboring eight tiles
# 	# (and, of course, their neighbors by way of the recursion).
# 	size = size + continent_size(world, x-1, y+1)
# 	size = size + continent_size(world, x  , y+1)
# 	size = size + continent_size(world, x+1, y+1)
# 	size = size + continent_size(world, x+1, y  )
# 	size = size + continent_size(world, x+1, y-1)
# 	size = size + continent_size(world, x  , y-1)
# 	size = size + continent_size(world, x-1, y-1)
# 	size = size + continent_size(world, x-1, y  )
# 	size
# end
# puts continent_size(world, 1, 1)

# puts 'Program to check if a person is an employee v 1.0'
# employees = [
# 	['Rick','Peyton'],
# 	['Pam','Brunson'],
# 	['Vanessa','Kern'],
# 	['Susan','Russell']
# 	['Tracy','Garner']
# ]

# def employee_check employees, first, last
	
# end

# puts 'What is the first name of the person you are looking for?'
# fname = gets.chomp
# puts 'We have a ' + employee_check(fname,'') + ' here. Is that who you are looking for?'

# puts 'Sorting Program with recursion v1.0'

# # Keep two more lists around
# # One for already-sorted words
# # One for still - unsorted words
# # Find the smallest word in the unsorted list
# # push it into the end of the sorted_array

# def sort some_array
# 	recursive_sort some_array, []
# end

# def recursive_sort unsorted_array, sorted_array
# 	smallest = unsorted_array[0]
# 	array_length = unsorted_array.length
# 	position = 0
# 	x = 0
# 	if array_length > 1
# 		unsorted_array.each do |uns|
# 			if uns.downcase < smallest.downcase
# 				smallest = uns
# 				position = x
# 			end
# 			x = x + 1
# 		end
# 			sorted_array.push(smallest)
# 			unsorted_array.delete_at(position)
# 			recursive_sort unsorted_array, sorted_array
# 	else
# 		sorted_array.push(unsorted_array.pop)
# 		sorted_array.each do |sor|
# 			puts sor
# 		end
# 	end
# end

# # Get a list of unsorted words into an array
# orig_array = []
# word = 'placeholder'
# puts 'Enter a list of words to be sorted. Press enter when done.'
# while word != ''
# 	word = gets.chomp
# 	orig_array.push word
# end
# orig_array.pop

# puts 'This is the output of the built in sort method.'
# orig_array.sort.each do |un|
# 	puts un
# end

# puts 'This is the output of Rick\'s sort method.'
# sort orig_array




puts 'Shuffling Program with recursion v1.0'

# Keep two more lists around
# One for already-sorted words
# One for still - unsorted words
# Find the smallest word in the unsorted list
# push it into the end of the sorted_array

def shuffle some_array
	recursive_shuffle some_array, []
end

def recursive_shuffle unshuffled_array, shuffled_array
	array_length = unshuffled_array.length
	if array_length > 0
		pick_one = rand(array_length)
		shuffled_array.push(unshuffled_array[pick_one])
		unshuffled_array.delete_at(pick_one)
		recursive_shuffle unshuffled_array, shuffled_array
	else
		shuffled_array.each do |sh|
			puts sh
		end
	end
end

# Get a list of unsorted words into an array
orig_array = []
word = 'placeholder'
puts 'Enter a list of words to be shuffled. Press enter when done.'
while word != ''
	word = gets.chomp
	orig_array.push word
end
orig_array.pop

puts 'This is the output of the built in shuffle method.'
orig_array_shuffled = orig_array
puts orig_array_shuffled.shuffle

puts 'This is the output of Rick\'s sort method.'
shuffle orig_array



