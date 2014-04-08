puts "Orange Tree Program"
class OrangeTree

  def initialize
    puts 'A new orange tree is born.'
    @height = 0
    @age = 0
    @count_the_oranges = 0
  end

  # Have a height method that returns its height
  def height num
    puts "The orange tree is now #{num} feet tall."
  end

  def age num
    puts "The orange tree is now #{num} years old."
  end

  def fruit num
    if num < 4
      puts 'The orange true has produced no fruit.'
      @count_the_oranges = 0
    else
      @count_the_oranges = @age * 6 - 15
      puts "The orange tree produced #{@count_the_oranges} oranges."
    end
  end

  def pick_an_orange
    if @count_the_oranges > 0
      @count_the_oranges = @count_the_oranges - 1
      puts 'yum! That was one delicious orange!'
      puts "How many oranges are left? #{@count_the_oranges}"
    else
      puts 'There are no oranges to pick.'
      one_year_passes
    end
  end

  # Have a one_year_passes method that ages the tree one year.
  # Each year the tree grows taller (programmer defined) (2 ft)
  def one_year_passes
    if @age < 15
      @age = @age + 1
      @height = @height + 2
      height @height
      age @age
      fruit @age
    else
      puts 'The orange tree has perished.'
      exit
    end
  end

  def question
    puts 'Would you like to pick an orange? (Y for yes or N for no)'
    validate gets.chomp.downcase
  end

  def validate answer
    if answer == 'y'
      pick_an_orange
      question
    elsif answer == 'n'
      one_year_passes
      question
    else
      puts 'That is an invalid answer.'
      question
    end
  end

end

tree1 = OrangeTree.new
tree1.question