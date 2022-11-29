
# Using iteration, write a method #fibs which takes a number and returns an array
# containing that many numbers from the fibs sequence. Using an example input
# of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].

# Now write another method #fibs which solves the same problem recursively.
# This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either
# of these lengths a requirement… just get it done).

# Algo recursive fibs:

# Declare a method called fibs that takes 2 parameters:
# 1st: a number 'num'
# 2cnd: an array 'fibo' wich defaults to [0, 1]
# if the passed number is equal to 2 return the fibo array
# elsif
# else sum the 2 last elements of the fibo array, push that sum to fibo
# and call the fibs method

def fibs_rec(num, fibo=[0, 1])
  return [] if num == 0
  return [0] if num == 1
  num == 2 ? (return fibo) : fibo << fibo[-1] + fibo[-2] and fibs_rec(num - 1, fibo)
end

p fibs_rec(0)
p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(5)
p fibs_rec(8)


# Algo loopy fibs

# declare a method 'fibs' that takes a number 'num' as a parameter
# declare a while keepgoing loop

def fibs(num)
  return [] if num == 0
  return [0] if num == 1
  fibo = [0, 1]
  while num > 2
    fibo << fibo[-1] + fibo[-2]
    num -= 1
  end
  fibo
end

p fibs(3)
p fibs(0)
p fibs(1)
