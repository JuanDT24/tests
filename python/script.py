import time

def nth_fibonacci(n):
    if n <= 1:
        return n
    return nth_fibonacci(n - 1) + nth_fibonacci(n - 2)

n = 40
start = time.time()

result = nth_fibonacci(n)

time_elapsed_ms = (time.time() - start) * 1000  # Convert to milliseconds


print(f"python: {time_elapsed_ms:.3f} ms")
