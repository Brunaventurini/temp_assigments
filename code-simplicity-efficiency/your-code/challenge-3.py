def find_longest_side(max_length):
    solutions = []
    for x in range(5, max_length):
        for y in range(4, max_length):
            for z in range(3, max_length):
                if x*x == y*y + z*z:
                    solutions.append(max(x, y, z))
    return max(solutions, default=0)

# Input section
max_length = int(input("What is the maximal length of the triangle side? Enter a number: "))

# Output the longest side possible
print(f"The longest side possible is {find_longest_side(max_length)}")
