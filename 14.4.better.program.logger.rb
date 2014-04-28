# Write a method called log that takes a string description of a block,
# and a block.
# It should tell you it started the block and tell you it finished
# while also telling what the block returned.
# Test it by sending it a code blockk and inside the block put another
# call to log passing a block into it.

# Use global variables to do proper indention
# $global, $nesting_depth etc...

# Example output

# Beginning "outer block"...
#   Beginning "some little block"...
#     Beginning "teeny-tiny block"...
#     ..."teeny-tiny block" finished, returning:
#     lots of love
#   ..."some little block" finished, returning:
#   42
#   Beginning "yet another block"...
#   ..."yet another block" finished, returning:
#   I love Indian food!
# ..."outer block" finished, returning:
# true

$nesting_depth = 0
$nesting = ' '

def log block_description, &block
  puts "#{$nesting*$nesting_depth} Beginning #{block_description}..."
  $nesting_depth = $nesting_depth + 2
  result = block.call
  $nesting_depth = $nesting_depth - 2
  puts "#{$nesting*$nesting_depth} ...#{block_description} finished, returning: #{result.to_s}"
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    7 * 7
  end
  log 'yet another block' do
    output = 'I love Indian food!'
  end
  output = true
end