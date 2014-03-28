start_month = 5
start_year = 2014
money_already_in_account = 10.18
per_month_array = []

domains = {}
# domains ['#domain'] = [#renewal_year, #renewal_month, #renewal_rate, #renewal_length]
domains ['therickpeyton.com'] = [2014, 5, 9.99, 3]
domains ['budgetstart.com'] = [2014, 6, 9.99, 1]
domains ['budgetstart.com SSL'] = [2014, 8, 9.99, 1]
domains ['abepeyton.com'] = [2014, 11, 9.99, 3]
domains ['abrahampeyton.com'] = [2014, 11, 9.99, 3]
domains ['rickpeyton.com SSL'] = [2015, 1, 9.99, 3]
domains ['maddencovers.com'] = [2015, 3, 9.99, 1]
domains ['rickspi.com'] = [2015, 7, 9.99, 1]
domains ['adoptionery.com'] = [2015, 8, 9.99, 1]
domains ['adoptionary.com'] = [2015, 8, 9.99, 1]
domains ['rickpeyton.com'] = [2015, 12, 9.99, 3]
domains ['beccapeyton.com'] = [2017, 1, 9.99, 1]

domains.each do |domain|
	years_to_months = (domains[domain[0]][0] - start_year) * 12
	months = domains[domain[0]][1] - start_month

	if months >= 0 || years_to_months == 0
		total_months = years_to_months + months + 1
	else
		total_months = years_to_months + months
	end

	renewal_length = domains[domain[0]][3]
	renewal_rate = domains[domain[0]][2]
	per_month = ((renewal_length * renewal_rate) / total_months)
	while total_months > 0
		if per_month_array[total_months - 1] != nil
			per_month_array[total_months - 1] = per_month_array[total_months - 1] + per_month
		else
			per_month_array[total_months - 1] = per_month
		end
		total_months = total_months - 1
	end
end

domains.each do |domain|
	per_month_array_length = per_month_array.length
	years_to_months = (domains[domain[0]][0] - start_year) * 12
	months = domains[domain[0]][1] - start_month

	if months >= 0 || years_to_months == 0
		total_months = years_to_months + months + 1
	else
		total_months = years_to_months + months
	end

	renewal_rate = domains[domain[0]][2]
	ongoing_per_month = (renewal_rate / 12)
	while total_months <= per_month_array_length
		if per_month_array[total_months] != nil
			per_month_array[total_months] = per_month_array[total_months] + ongoing_per_month
		end
		total_months = total_months + 1
	end
end

x = 0
per_month_array.each do |each|
	puts start_month.to_s.rjust(3) + ' / ' + start_year.to_s.rjust(4) + ': ' + each.round(2).to_s.rjust(5)
	if start_month == 12
		start_year = start_year + 1
		start_month = 1
	else
		start_month = start_month + 1
	end
end

final_per_month = 0
domains.each do |domain|
	renewal_rate = (domains[domain[0]][2] / 12)
	final_per_month = final_per_month + renewal_rate
end
puts "The ongoing monthly cost will be #{final_per_month.round(2)}"