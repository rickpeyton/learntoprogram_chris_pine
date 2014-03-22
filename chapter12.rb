# Read in birthdays.txt

# Ask the user for a name

# Program should say when that person's birthday, how many days until their birthday and is and how old they will be.

# Break up each line and put it in a hash with the person's name as the hash key

# Program will be more pretty if you use the each_line string method (but you'll have to chomp the line endings).

filename = 'birthdays.txt'

(File.Read filename).split(',')
