import time
def nth_fibonacci(n):
  
    # Base case: if n is 0 or 1, return n
    if n <= 1:
        return n
      
    # Recursive case: sum of the two preceding Fibonacci numbers
    return nth_fibonacci(n - 1) + nth_fibonacci(n - 2)

n = 40 
start=(time.time())
result = nth_fibonacci(n)
end=time.time()
print(f"python:")
print(f"Time taken: {end-start} seconds")



