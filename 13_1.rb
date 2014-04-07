class Array
  def shuffle
    recursive_shuffle self, []
  end

  def recursive_shuffle unshuffled_array, shuffled_array
    array_length = unshuffled_array.length
    if array_length > 0
      pick_one = rand(array_length)
      shuffled_array.push(unshuffled_array[pick_one])
      unshuffled_array.delete_at(pick_one)
      recursive_shuffle unshuffled_array, shuffled_array
    else
      shuffled_array.each do |sh|
        puts sh
      end
    end
  end
end

class Integer
  def english_number
    number = self
    if number < 0 # No negative numbers.
      return 'Please enter a number that isn\'t negative'
    end
    if number == 0
      return 'zero'
    end

    # No more special cases! No more returns!
    num_string  = '' # This is the string we will return
    ones_place  = [ 'one',    'two',    'three',
            'four',   'five',   'six',
            'seven',  'eight',  'nine']
    tens_place  = [ 'ten',    'twenty', 'thirty',
            'fourty', 'fifty',  'sixty',
            'seventy',  'eighty', 'ninety']
    teenagers = [ 'eleven', 'twelve', 'thirteen',
            'fourteen', 'fifteen',  'sixteen',
            'seventeen','eightteen','nineteen']

    # "left" is how much of the number
    # => we still have left to write out.
    # "write" is the part we are writing out right now.
    left = number
    write = left/1000000000000  # How many trillions left?
    left = left - write * 1000000000000 # Subract off those trillions

    if write > 0
      # Now here's the recursion:
      trillions = english_number write
      num_string = num_string + trillions + ' trillion'
      if left > 0
        # So we don't write 'two undredfifty-one'...
        num_string = num_string + ' '
      end
    end

    write = left/1000000000 # How many billions left?
    left = left - write * 1000000000 # Subract off those billions

    if write > 0
      # Now here's the recursion:
      billions = english_number write
      num_string = num_string + billions + ' billion'
      if left > 0
        # So we don't write 'two undredfifty-one'...
        num_string = num_string + ' '
      end
    end

    write = left/1000000  # How many millions left?
    left = left - write * 1000000 # Subract off those millions

    if write > 0
      # Now here's the recursion:
      millions = english_number write
      num_string = num_string + millions + ' million'
      if left > 0
        # So we don't write 'two undredfifty-one'...
        num_string = num_string + ' '
      end
    end

    write = left/1000 # How many thousands left?
    left = left - write * 1000 # Subract off those thousands

    if write > 0
      # Now here's the recursion:
      thousands = english_number write
      num_string = num_string + thousands + ' thousand'
      if left > 0
        # So we don't write 'two undredfifty-one'...
        num_string = num_string + ' '
      end
    end

    write = left/100  # How many hundreds left?
    left = left - write * 100 # Subract off those hundreds

    if write > 0
      # Now here's the recursion:
      hundreds = english_number write
      num_string = num_string + hundreds + ' hundred'
      if left > 0
        # So we don't write 'two undredfifty-one'...
        num_string = num_string + ' '
      end
    end

    write = left / 10   # How many tens left?
    left = left - write * 10  # Subtract off those tens.

    if write > 0
      if ((write == 1) and (left > 0))
        # Since we can't write "tenty-two" instead of
        # "twelve", we have to make a special exception
        # for these.
        num_string = num_string + teenagers[left - 1]
        # The "-1" is becuase teenagers[3] is
        # fourteen, not 'thirteen'
        # Since we took care of the digit in the
        # ones place already, we have nothing left to write
        left = 0
      else
        num_string = num_string + tens_place[write - 1]
        # The "-1" is because tens_place[3] is
        # "forty", not "thirty"
      end

      if left > 0
        # So we don't write sixtyfour
        num_string = num_string + '-'
      end
    end

    write = left # How many ones left to write out?
    left = 0 # Subtract off those ones.

    if write > 0
      num_string = num_string + ones_place[write - 1]
      # The "-1" is because ones_place[3] is
      # four, not three
    end

    # Now we just return "num_string"
    num_string
  end
end

orig_array = ['cooking','salads','light']
orig_array.shuffle
puts 27.english_number