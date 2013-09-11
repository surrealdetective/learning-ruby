require 'debugger'
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# Stepwise:

# find multiples of 3 below 1000
  threes = (1..333).collect{|number| number * 3 }
  threes.delete_if{|number| number >= 1000 }
# find multiples of 5 below 1000
  fives = (1..200).collect{|number| number * 5 }
  fives.delete_if{|number| number >= 1000 }
# add them together
  all_multiples = threes + fives
  sum_of_multiples = all_multiples.uniq!.inject(:+)
  puts "from solution1: #{sum_of_multiples}\n\n"

# Different

Inf = 1.0/0.0

def find_sum_of_multiples_below(first_number, second_number, ceiling)
  # debugger
  multiples = []
  (1..Inf).each do |counter|
    # product = 1
    multiple_1 = first_number * counter
    multiple_2 = second_number * counter if second_number * counter < ceiling
    break if (multiple_1 >= ceiling)
    multiples.push(multiple_1, multiple_2) 
  end
  multiples.uniq!.compact!.sort!.delete_if{ |number| number >= ceiling }
  # puts "multiples 3:"
  # p multiples.select{|number| number % 3 == 0 }
  # puts "multiples 5:"
  # p multiples.select{|number| number % 5 == 0 }
  multiples.inject(:+)
end

puts "from solution2:"
puts find_sum_of_multiples_below 3,5,1000
# => 233168