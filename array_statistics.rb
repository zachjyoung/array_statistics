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

  def sum 
    @array.reduce(:+)
  end

  def product
    @array.inject(:*)
  end

  def high_low
    @array.last - @array.first
  end

  def digit_frequency
    digit_hash = {}
    @array.each do |number|
      digit_hash[number.to_s.length]||= 0
      digit_hash[number.to_s.length] += 1
    end
    digit_hash
  end
end
