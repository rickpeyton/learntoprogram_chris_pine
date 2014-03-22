# # Objective : Estimate proper cost per month to enter into YNAB for Amazon
# # Subscribe & Save subscriptions

# # Ask for cost of item and if there is any money already set aside
# # Offer 5% and 20% and 1,2,3,4,5 and 6 month pricing

# Ask for the item price
puts 'Enter enter price before any discounts.'
item_price = gets.chomp.to_f

# Ask if there is any money already in the account
puts 'Is there any money already in this account?'
existing_money = gets.chomp.to_f

# Create a function that takes the item price and the discount percentage and then subtracts the discount from the item price and returns the new item price.
def apply_discount price, percentage
	new_price = price - (percentage * price)
	return new_price
end

# Create a function that takes in the new item price, any money already in the account and then subtracts any money already in the account from the item price. Pass this new item price into a while loop that divides this amount by 1, 2, 3, 4, 5 and 6, rounds to two decimal points and puts each to the screen
def price_possibilities price, existing
	new_price = price - existing
	x = 1
	while x <= 6
		puts "Every #{x} month(s): #{(new_price / x).round(2)}"
		x = x + 1
	end
end

# Set new variable equal to the passing of item price and 5 percent into function 1
new_variable = apply_discount(item_price, 0.05)

# Pass the new item price along with any money already in the account into the second function
puts 'With a 5 percent discount.'
price_possibilities(new_variable, existing_money)

# Set new variable equal to the passing of item price and 20 percent into function 1
new_variable = apply_discount(item_price, 0.2)

# Pass the new item price along with any money already in the account into the second function
puts "\nWith a 20 percent discount."
price_possibilities(new_variable, existing_money)