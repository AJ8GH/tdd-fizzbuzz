require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'can be passed a number' do
    expect { 1.fizzbuzz }.to_not raise_error
  end

  it "returns Fizz when passed 3" do
    expect(3.fizzbuzz).to eq('Fizz')
  end

  it "returns Buzz when passed 5" do
    expect(5.fizzbuzz).to eq('Buzz')
  end

  it "returns Fizz when passed multiples of 3" do
    [3,6,9,12,18].each { |n| expect(n.fizzbuzz).to eq 'Fizz' }
  end

  it "returns Buzz when passed multiples of 5" do
    [5,10,20].each { |n| expect(n.fizzbuzz).to eq 'Buzz' }
  end

  it "returns FizzBuzz when passed 15" do
    expect(15.fizzbuzz).to eq 'FizzBuzz'
  end

  it "returns number if number is not divisible by 3 or 5" do
    [1,2,4,7,8,11,13,14,16,17,19].each { |n| expect(n.fizzbuzz).to eq n }
  end
  # ------ edge cases -------
  it 'returns 0 when passed 0' do
    expect(0.fizzbuzz).to eq 0
  end

  it 'works for very large ranges too' do
    (15..15_000_000).step(15).each { |n| expect(n.fizzbuzz).to eq 'FizzBuzz' }
  end

  it 'works for negative numbers too' do
    (-300_000..-15).step(15).each { |n| expect(n.fizzbuzz).to eq 'FizzBuzz' }
  end

  it 'works on floats too' do
    [3,6,9,12,18,21,24,27].each { |n| expect(n.to_f.fizzbuzz).to eq 'Fizz' }
  end
end
