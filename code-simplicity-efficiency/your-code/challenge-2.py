import random
import sys

def random_string_generator(length=12, characters='abcdefghijklmnopqrstuvwxyz0123456789'):
    return ''.join(random.choice(characters) for _ in range(length))

def batch_string_generator(num_strings, min_length=8, max_length=12):
    if min_length > max_length:
        sys.exit('Incorrect min and max string lengths. Try again.')

    return [random_string_generator(random.choice(range(min_length, max_length + 1))) for _ in range(num_strings)]

# Input section
min_length = int(input('Enter minimum string length: '))
max_length = int(input('Enter maximum string length: '))
num_strings = int(input('How many random strings to generate? '))

# Output generated random strings
print(batch_string_generator(num_strings, min_length, max_length))
