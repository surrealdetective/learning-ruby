# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

require 'prime'
Inf = 1.0/0.0

nth_prime = [0,1] # [1st, the prime ]
number = 1
2.upto(Inf).each do |number|
  if number.prime?
    nth_prime =[ nth_prime[0]+=1, number ]
    p nth_prime
  end
  break if nth_prime.first == 10_001
end
