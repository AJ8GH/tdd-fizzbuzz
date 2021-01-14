class Numeric
  def fizzbuzz
    self.zero? ? 0 :
    self % 15 == 0 ? 'FizzBuzz' :
    self %  3 == 0 ? 'Fizz' :
    self %  5 == 0 ? 'Buzz' : self
  end
end
