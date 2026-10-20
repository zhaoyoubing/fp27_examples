list = [2, 0, 1, 8]
max = 0  # shared mutable state

for e in list:
    if max < e:
        max = e # Mutation

for i in range(0,len(list)):
    list[i] = list[i] * 2  

print(list)