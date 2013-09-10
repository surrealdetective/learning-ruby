# Proj Euler 002 - sum of even fibonacci numbers under 4 mil

# grab the fib sequence
def doit( numbers=[1,2] )
  numbers.collect do |num|
    return numbers if numbers.slice(-2,2).inject(:+) >= 4e6
    p numbers << numbers.slice(-2,2).inject(:+)
    doit(numbers)
  end
end

# add the evens
def even_sum_it(array)
  array.select!{|numb| numb.even?}.inject(:+)
end

## solution ##
puts even_sum_it(doit)
