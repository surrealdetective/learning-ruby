# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

CONTAINER = [1,2]

def evens
  @even_numbers_in_sequence ||= []
end

def next_num
  @numbers[0] + @numbers[1]  
end

def calculate_next(numbers)
  @numbers = numbers
  return CONTAINER if next_num >= 4e6
  CONTAINER << next_num; # p CONTAINER # uncomment for visuals
  numbers = [numbers[-1], next_num]
  calculate_next( numbers )
end

def sum_even(array)
  array.select!{|numb| numb.even?}.inject(:+)
end

############# SOLUTION #############

calculate_next([1,2])
solution = sum_even(CONTAINER)

puts "\nSolution:\n\t\tThe sum of all even numbers in the Fibonacci Sequence, \n\t\tup to but not including 4 million:\t #{solution}"

