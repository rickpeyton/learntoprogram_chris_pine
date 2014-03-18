puts 'Building a Better Playlist Shuffling Program'

# Each line in a text file is the path to a song.
# Give the filename an .m3u extension
# Use the shuffle method to create a playlist

# Store the playlists here
# /Users/rick/Desktop/generated_playlists
filename = 'playlist1.m3u'
Dir.chdir('/Users/rick/Desktop/generated_playlists')

# Find all of the mp3s
# /Users/rick/Desktop/music_keep
all_music = Dir['/Users/rick/Desktop/music_keep/**/*.m4a']
num_of_songs = all_music.length
# Start with the build in shuffle method
shufflled_music = all_music.shuffle
# Take the first song out and into a new array
ricks_shuffle = []
ricks_shuffle = shufflled_music[0]
shufflled_music.delete_at(0)
num_of_songs = num_of_songs - 1
genre = 1

# How would I like it to shuffle?
# Play 2 songs from the same genre in a row
# Try to avoid playing the same artist twice in a row

while num_of_songs > 0
	if genre = 0
		
	else
		
	end
	split_music = shufflled_music[0].split '/'
	puts split_music[5]
	
end

File.open filename, 'w' do |d|
	shufflled_music.each do |x|
		d.write x + "\n"
	end
end


#0 Users
#1 rick
#2 Desktop
#3 music_keep
#4 Christian
#5 Jesus Culture
#6 10 I Am In Love With You (Live).m4a