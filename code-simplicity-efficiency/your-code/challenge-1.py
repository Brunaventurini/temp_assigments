# Mapping words to numbers for easy calculation
number_mapping = {'zero': 0, 'one': 1, 'two': 2, 'three': 3, 'four': 4, 'five': 5}

# Input section
print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

# Check if inputs are valid
if a in number_mapping and b in ['plus', 'minus'] and c in number_mapping:
    # Perform calculation
    result = number_mapping[a] + (1 if b == 'plus' else -1) * number_mapping[c]
    print(f"{a} {b} {c} equals {result}")
else:
    print("I am not able to answer this question. Check your input.")

print("Thanks for using this calculator, goodbye :)")
