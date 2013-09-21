# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
require 'prime'

def find_prime_numbered(nth)
  @Inf = 1.0/0.0
  counter = 0
  prime_number = 0
  for i in 1..@Inf
    if counter == nth
      return prime_number 
    end
    if i.prime?
      prime_number = i
      counter += 1
      # puts "numbered: #{counter}\t#{prime_number}" # uncomment for visuals
    end    
  end
end

# puts find_prime_numbered(10001)
find_prime_numbered(10001)


def find_prime_without_inf(nth)
  i = 1
  counter = 0
  prime_number = 0
  until counter == nth
    i += 1
    if i.prime?
      prime_number = i
      counter += 1
      # puts "numbered: #{counter}\t#{prime_number}" # uncomment for visuals
    end    
  end
  return prime_number 
end

# puts find_prime_without_inf(10001)
find_prime_without_inf(10001)


def find_prime_without_reassigning_var(nth)
  number = 1
  counter = 0
  until counter == nth
    number += 1
    counter += 1 if number.prime?
  end
  number
end

# puts find_prime_without_reassigning_var(10001)
find_prime_without_reassigning_var(10001)

def find_prime_without_reassigning_var_return(nth)
  number = 1
  counter = 0
  until counter == nth
    number += 1
    counter += 1 if number.prime?
  end
  return number
end