# Question 3
# Write a Ruby method called: is_prime. The function must take a number n and it should return true or false whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.
#

p "Please gumber please"
n = gets.chomp.to_i

def is_prime(n)
  for i in (2...n)
    if n % i == 0
      return "#{n} is not a prime number."
    end
  end
  return "#{n} is a prime number."
end

puts is_prime(n)
