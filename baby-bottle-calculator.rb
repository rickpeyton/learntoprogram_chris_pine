puts 'Rick\'s Baby Bottle Calculator Version 1'
puts 'Total ounces of formula per day?'
founces = gets.chomp.to_i
puts 'Total feedings per day?'
ftimes = gets.chomp.to_i
puts 'Do you measure your formula in scoops or grams? (Enter S or G)'
sorg = gets.chomp.capitalize
continue = false
while continue != true
	if sorg == 'S'
		puts 'Scoops to be added to 1oz of water?'
		gform = gets.chomp.to_f
		continue = true
	elsif sorg == 'G'
		puts 'Weight (in grams) to be added to 1oz of water?'
		gform = gets.chomp.to_f #4.35 in Abe's case.
		continue = true
	else
		continue = false
		puts 'Enter S or G, only.'
		sorg = gets.chomp.capitalize
	end
end

bottles = []
standardbot = founces / ftimes
remainder = founces - (standardbot * ftimes)
while founces > 0
	while remainder > 0
		bottles.push standardbot + 1
		remainder = remainder - 1
		founces = founces - standardbot - 1
	end
	bottles.push standardbot
	founces = founces - standardbot
end
count = 1
ozcount = 0
if sorg == 'S'
	bottles.each do |bot|
		puts 'Bottle[' + count.to_s + '] ' + bot.to_s + ' ounces of water. ' + ((gform * bot).round(1)).to_s + ' scoops of formula.'
		count = count + 1
		ozcount = ozcount + bot
	end
elsif sorg == 'G'
	bottles.each do |bot|
		puts 'Bottle[' + count.to_s + '] ' + bot.to_s + ' ounces of water. ' + ((gform * bot).to_i).to_s + ' grams of formula.'
		count = count + 1
		ozcount = ozcount + bot
	end
end
puts 'Total ounces will be ' + ozcount.to_s + '.'