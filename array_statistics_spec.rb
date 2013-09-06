require 'rspec'
require './array_statistics'

describe ArrayStatistics do 
  let(:array) { ArrayStatistics.new([1,1000,200,300,3000,4000,5500])}
  it 'displays the nth smallest number in the array' do 
   expect(array.nth_smallest(3)).to eql(300)
  end

  it 'finds the largest number in the array' do 
    expect(array.largest_number).to eql(5500)
  end

  it 'saves the array to a instance variable' do 
    expect(array.array).to eql([1,1000,200,300,3000,4000,5500].sort)
  end

  it 'finds the smallest number in the array' do 
    expect(array.smallest_number).to eql(1)
  end

  it 'finds the average of all the numbers in the array' do 
    expect(array.average).to eql(2000)
  end

  it 'finds the standard deviation of the array' do 
    expect(array.stdev.round(1)).to eql(2174.7)
  end

  it 'finds the sum of all the numbers in the array' do 
    expect(array.sum).to eql(14001)
  end

  it 'finds the product of all the numbers in the array' do 
    expect(array.product).to eql(3960000000000000000)
  end

  it 'finds the difference between the highest and lowest number in the array' do 
    expect(array.high_low).to eql(5499)
  end

  it 'finds the frequency of n-digit numbers' do 
    expect(array.digit_frequency).to eql({
   1 => 1,
   3 => 2,
   4 => 4
 })
end




end