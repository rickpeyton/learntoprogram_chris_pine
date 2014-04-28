# Put a dong for every hour that has passed today.
# Time.new.hour to get the current our (in 24 hour format)

def grandfather_clock block_description, &block
  profling_on = true
  if profling_on == true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

grandfather_clock 'Dong the clock:' do
  now = Time.new.hour
  now.times do
    puts 'DONG!'
  end
end