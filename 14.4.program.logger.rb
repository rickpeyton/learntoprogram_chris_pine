# Write a method called log that takes a string description of a block,
# and a block.
# It should tell you it started the block and tell you it finished
# while also telling what the block returned.
# Test it by sending it a code blockk and inside the block put another
# call to log passing a block into it.

# Example output

# Beginning "outer block"...
# Beginning "some little block"...
# ..."some little block" finished, returning:
# 5
# Beginning "yet another block"...
# ..."yet another block" finished, returning:
# I like Thai Food!
# ..."out block" finished, returning: false

def log block_description, &block
  puts "Beginning #{block_description}..."
  result = block.call
  puts "...#{block_description} finished, returning: #{result.to_s}"
end

log 'outer block' do
  log 'some little block' do
    5 * 5
  end
  log 'yet another block' do
    output = 'I like Thai Food!'
  end
  output = false
end