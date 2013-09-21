# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

def find_prime_numbered(nth)#nth
  require 'prime'
  ##################
    # check all numbers (increasingly)
    # until you've found 10001 of them
    
  @Inf = 1.0/0.0
  # 2.step(nth, 1) do |iterator| 
    # debugger
  counter = 0
  prime_number = 0
  for i in 1..@Inf
    break if counter == nth
    
    if i.prime?
      prime_number = i
      counter += 1
      puts "numbered: #{counter}\t#{prime_number}"
    end    
  end    
end

find_prime_numbered(10001)
