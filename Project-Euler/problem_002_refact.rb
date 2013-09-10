# Proj Euler 002 - sum of even fibonacci numbers under 4 mil

def fibonacci_upto( numbers=[1,2], ceiling=4e6 )
  numbers.collect do |num|
    return numbers if numbers.slice(-2,2).inject(:+) >= ceiling
    numbers << numbers.slice(-2,2).inject(:+) # for visuals: p numbers << numbers.slice(-2,2).inject(:+)
    fibonacci_upto(numbers)
  end
end

def sum_of_evens(array)
  array.select!{|numb| numb.even?}.inject(:+)
end

##############
## solution ##
##############

puts sum_of_evens(fibonacci_upto)