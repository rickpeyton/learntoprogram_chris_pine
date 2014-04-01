require 'net/http'
uri = URI('http://stationerystyle.com/category/graduation-announcements.html')
test = Net::HTTP.get(uri)

filename  = 'froogle_test.txt'
File.open filename, 'w' do |f|
      f.write test
end