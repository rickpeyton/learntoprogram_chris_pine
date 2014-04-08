# Program should read in names and birthdays from birthdays.txt
# It should ask you for a name
# It will return the persons next birthday and tell how old
# they will be. Store each name in a hash
# birth_dates['The King of Spain'] = 'Jan 5, 1938'
# Might consider each_line method instead of each

filename = 'birthdays.txt'
birthdays = File.read filename
birth_dates = {}
birthdays.each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma] != ',' && first_comma <= line.length
    first_comma = first_comma + 1
  end
  birth_dates[line[0, first_comma]] = line[-12..-1]
end
puts 'Who\'s birthday would you like to lookup?'
name = gets.chomp
bday = birth_dates[name]
if birth_dates[name] != nil
  puts "#{name}'s birthday is #{bday}"
else
  puts 'No Match'
end