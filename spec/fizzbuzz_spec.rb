require_relative '../lib/fizzbuzz'

describe 'fizzbuzz' do
  it 'can be passed a number' do
    expect { fizzbuzz(1) }.not_to raise_error
  end

  it "returns Fizz when passed 3" do
    expect(fizzbuzz(3)).to eq('Fizz')
  end

  it "returns Buzz when passed 5" do
    expect(fizzbuzz(5)).to eq('Buzz')
  end

  it "returns Fizz when passed 6" do
    [3,6,9,12,18].each { |n| expect(fizzbuzz(n)).to eq 'Fizz' }
  end
  
end
