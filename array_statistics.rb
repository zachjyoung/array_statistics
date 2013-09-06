require 'ruby-standard-deviation'

class ArrayStatistics
  attr_reader :array
  def initialize(array)
    @array = array.sort
  end

  def nth_smallest(num)
    @array[num - 1]
  end

  def largest_number
    @array.last
  end

  def smallest_number
    @array.first
  end

  def average
    @array.reduce(:+) / @array.length
  end

  def stdev
    @array.stdev.round(1)
  end

end


# As an array analyst
# I want to know the standard deviation of all numbers in the array

# As an array analyst
# I want to know the nth smallest number in the array

# Sample Output
# a = ArrayStatistic.new([1, 1000, 200, 300, 3000, 4000, 5500])
# a.nth_smallest(3)

# => 300
# As an array analyst
# I want to know the sum of all of the numbers in the array

# As an array analyst
# I want to know the product of all the numbers in the array

# As an array analyst
# I want to know the difference between the highest and lowest number in the array

# As an array analyst
# I want a hash that breaks down how many times n-digit numbers are found in the array

# Example for the above user story:

# ArrayStatistic.new([1, 1000, 200, 300, 3000, 4000, 5500]).digit_frequency

# => {
#   1: 1,
#   2: 2,
#   3: 4
# }