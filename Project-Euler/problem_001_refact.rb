require 'debugger'
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

Inf = 1.0/0.0

def find_sum_of_multiples_below(first_number, second_number, ceiling)
  multiples = []
  (1..Inf).each do |counter|
    multiple_1 = first_number * counter
    multiple_2 = second_number * counter if second_number * counter < ceiling
    break if (multiple_1 >= ceiling)
    multiples.push(multiple_1, multiple_2) 
  end
  multiples.uniq!.compact!.sort!.delete_if{ |number| number >= ceiling }
  multiples.inject(:+)
end

puts find_sum_of_multiples_below 3,5,1000
