puts 'Handbrake CLI Script Builder'
# create a filename to hold the script output
filename = 'handbrake.txt'
# do a chdir to hold the filename
Dir.chdir('/Users/rick/Desktop')

puts 'Enter the directory that contains the videos'
puts 'example: /Volumes/Media/uTorrent/TV/'
video_dir = gets.chomp
puts 'Enter the search parameters you would like to use'
puts 'example: *theory.s02e*.mp4'
search = gets.chomp
# find all of the existing mp4 filenames  
# all_videos = Dir['/Volumes/Media/uTorrent/TV/**/*theory.s02e*.mp4']
all_videos = Dir["#{video_dir}**/#{search}"]

File.open filename, 'w' do |d|
  all_videos.each do |x|
    path_length = x.length
    new_path = "#{x[0, (path_length - 4)]}.m4v"
    d.write "./HandBrakeCLI -i #{x} -o #{new_path} --preset=\"AppleTV 2\" ; "
  end
end