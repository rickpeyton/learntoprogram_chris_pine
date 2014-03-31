require 'yaml'
# Define yaml save and load methods...
def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end
# Save it example
# yaml_save email_addresses, filename

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end
# Load it example
# read_array = yaml_load filename

# filename  = 'all_dealers_yaml.txt'

require 'CSV'
filename = 'all-dealers.csv'

some_array = []
CSV.foreach(filename) do |row|
  some_array.push row
end
some_array.each do |dealer|
  puts "#{dealer[0]}:"
  puts "  :fromname: #{dealer[1]}"
  puts "  :frommail: #{dealer[2]}"
  puts "  :logo: #{dealer[3]}"
  puts "  :web: #{dealer[4]}"
  puts "  :email: #{dealer[5]}"
end

# 0 AL0170
# 1 The Paper Lady
# 2 thepaperlady@et.printswell.com
# 3 AL0170.gif
# 4 http://thepaperlady.printswell.com/
# 5 donna@thepaperlady.net

# FL0511:
#   :fromname: An Invitation to Grace
#   :frommail: aninvitationtograce@et.printswell.com
#   :logo: FL0511.gif
#   :web: http://invitationtograce.printswell.com/
#   :email: aninvitationtograce@gmail.com