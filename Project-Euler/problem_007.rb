# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

# find_nth_prime(6)
require 'prime'
def find_prime(nth)
  container = []
  Prime.each(nth) do |prime|
    container << prime
  end
  p container.last
end

def verify_prime_method(nth)
  Prime.each_with_index(nth) do |prime, index|
    puts "#{index+1}:\t #{prime}"
  end
end

find_prime 6
verify_prime_method 6

