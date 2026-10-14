# LA04/describe_list.py

def describe_list(xs):
    match xs:
        case []:
            return "Empty list"
        case [x]:
            return f"Single element: {x}"
        case [x, y]:
            return f"Two elements: {x}, {y}"
        case [x, *rest]:
            return f"Starts with {x}, rest length {len(rest)}"

print(describe_list([]))          # Output: Empty list
print(describe_list([1]))          # Output: Single element: 1
print(describe_list([1,2]))          # Output: Two elements: 1, 2
print(describe_list([1,2,3,4]))        # Output: Starts with 1, rest length 3