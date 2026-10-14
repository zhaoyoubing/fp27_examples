# LA04/process_point.py

def process_point(point):
    match point:
        case (0, 0):
            return "Origin"
        case (x, 0):
            return f"On X-axis at {x}"
        case (0, y):
            return f"On Y-axis at {y}"
        case (x, y):
            return f"Point at ({x}, {y})"

print(process_point((0, 0)))      # Output: Origin
print(process_point((5, 0)))      # Output: On X-axis at 5
print(process_point((0, 5)))      # Output: On Y-axis at 5
print(process_point((5, 5)))      # Output: Point at (5, 5)