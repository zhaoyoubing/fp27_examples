list = [2, 0, 1, 8]
max = 0  # shared mutable state

for n in list:
    if max < n:
        max = n # Mutation

print(max)