class Die
  def roll
    1 + rand(6)
  end
end
# Make a couple of dice...
dice = [Die.new, Die.new]

# and roll them
dice.each do |die|
  puts die.roll
end