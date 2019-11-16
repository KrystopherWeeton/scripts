from random import randint
from random import seed
from datetime import datetime

seed(datetime.now())

num_ones = randint(0, 16)
numbers = []

for i in range(num_ones):
    k = randint(0, 16)
    while (k in numbers):
        k = randint(0, 16)
    numbers.append(k)

# numbers has a list of random integers
print(*numbers, sep=', ')
