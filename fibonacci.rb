
# Using iteration, write a method #fibs which takes a number and returns an array
# containing that many numbers from the fibonacci sequence. Using an example input
# of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].

# Now write another method #fibs_rec which solves the same problem recursively.
# This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either
# of these lengths a requirement… just get it done).

# Algo recursive Fibonacci:

# Declare a method called fibonacci that takes 2 parameters:
# 1st: a number 'num'
# 2cnd: an array 'fibo' wich defaults to [0, 1]
# if the passed number is equal to 2 return the fibo array
# else sum the 2 last elements of the fibo array, add the sum to fibo
# and call the fibonacci method

def fibonacci(num, fibo= [0,1])
  return fibo if num == 2
  fibo << (fibo[-1] + fibo[-2])
  fibonacci(num - 1, fibo)
end

p fibonacci(5)
p fibonacci(8)

