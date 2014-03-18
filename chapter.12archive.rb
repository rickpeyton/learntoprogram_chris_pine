puts 'What year were you born?'
year_born = gets.chomp.to_i
puts 'What month were you born?'
month_born = gets.chomp.to_i
puts 'What day of the month were you born on?'
day_born = gets.chomp.to_i

age = Time.gm(year_born, month_born, day_born)
years = ((Time.now - age) / 60 / 60 / 24 / 365).to_i

puts "You are #{years} years old!"
while years > 0
	puts 'Spank!'
	years = years - 1
end