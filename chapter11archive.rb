require 'yaml'
test_array = [
	['Rick','Brady'],
	['Rebecca','Kaarin'],
	['Abe','Richard'],
]
test_string = test_array.to_yaml

filename = 'rick_test.txt'

File.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read(filename)

read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)

puts test_string

puts read_array
puts read_array[2][1]

#####

buffy_quote_1 = 
	'\'Kiss rocks\'?
	Why would anyone want to kiss...
	Oh, wait. I get it.'

buffy_quote_2 =
	"'Kiss rocks'?\n" +
	"Why would anyone want to kiss...\n" +
	"Oh, wait. I get it."

puts buffy_quote_1
puts buffy_quote_2
puts(buffy_quote_1 == buffy_quote_2)

puts "3...\n2...\n1...\nHappy New Year!"

puts "#{2 * 10 **4 + 1} Leagues Under the Sea, THE REVENGE!!!"

#####

require 'yaml'
# Define yaml save and load methods...
def yaml_save object, filename
	File.open filename, 'w' do |f|
		f.write(object.to_yaml)
	end
end
def yaml_load filename
	yaml_string = File.read filename

	YAML::load yaml_string
end

test_array = [
	'Slick Shoes',
	'Bully Blinders',
	'Pinchers of Peril'
]
filename = 'DatasGadgets.txt'

# Save it
yaml_save test_array, filename

# Load it
read_array = yaml_load filename

puts(read_array == test_array)


#####


# Moving and renaming pictures program
Dir.chdir '/Users/rick/Desktop/Chapter 11 Finished Pictures'

# First we find all of the pictures to be moved.
pic_names = Dir['/Users/rick/Desktop/Chapter 11 Picture Renaming/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

# This is out counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1

pic_names.each do |name|
	print '.' # This is our "progress bar".

	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end
	# New name contained the entire directory path
	# new_name stripped out the directory path and
	# is replaced via File.rename below.

	File.rename name, new_name
	pic_number = pic_number + 1
end

puts # This is so we aren't on progress bar line.
puts 'Done.'

#####

puts "Safer Picture Downloading"
# Moving and renaming pictures program
Dir.chdir '/Users/rick/Desktop/Chapter 11 Finished Pictures'

# First we find all of the pictures to be moved.
pic_names = Dir['/Users/rick/Desktop/Chapter 11 Picture Renaming/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

# This is out counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1

def renamer older_name, newer_name, picture_increment
	File.rename older_name, newer_name
	picture_increment = picture_increment + 1
	return picture_increment
end

pic_names.each do |name|
	print '.' # This is our "progress bar".

	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	# Check to see if the new file already exists
	if (File.exists? new_name) == true
		puts ''
		puts "#{new_name} already exists."
		puts 'Would you like to skip (S), replace (R) or exit (X)?'
		response = gets.chomp.capitalize
		good_response = false
		while good_response != true
			if response == 'S'
				puts "Skipping #{new_name}"
				pic_number = pic_number + 1
				good_response = true
			elsif response == 'R'
				puts "Replacing #{new_name}"
				pic_number = renamer(name, new_name, pic_number)
				good_response = true
			elsif response == 'X'
				puts 'Exiting program'
				exit
			else
				puts 'Please enter S, R or X'
				response = gets.chomp.capitalize
			end
		end
	else
		pic_number = renamer(name, new_name, pic_number)
	end
end

puts # This is so we aren't on progress bar line.
puts 'Done.'

#####

puts 'Build Your Own Playlist Program v1.0'

# Each line in a text file is the path to a song.
# Give the filename an .m3u extension
# Use the shuffle method to create a playlist

# Store the playlists here
# /Users/rick/Desktop/generated_playlists
filename = 'playlist1.m3u'
Dir.chdir('/Users/rick/Desktop/generated_playlists')

# Find all of the mp3s
# /Users/rick/Desktop/music_keep
all_music = Dir['/Users/rick/Desktop/music_keep/**/*.mp3']
shufflled_music = all_music.shuffle
File.open filename, 'w' do |d|
	shufflled_music.each do |x|
		d.write x + "\n"
	end
end