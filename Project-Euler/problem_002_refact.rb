# Proj Euler 002 - sum of even fibonacci numbers under 4 mil

def fibonacci_upto( numbers=[1,2], ceiling=4e6 )
    return numbers if numbers.slice(-2,2).inject(:+) >= ceiling
    numbers << numbers.slice(-2,2).inject(:+) # for visuals: p 
    fibonacci_upto(numbers)
end

def sum_of_evens(array)
  array.select!{|numb| numb.even?}.inject(:+)
end

##############
## solution ##
##############

puts sum_of_evens(fibonacci_upto)