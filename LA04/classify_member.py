# LA04/classify_member.py

def classify_number(n):
    match n:
        case x if x < 0:
            return "Negative"
        case x if x == 0:
            return "Zero"
        case x if x > 0:
            return "Positive"
        
print(classify_number(-5))  # Output: Negative
print(classify_number(0))   # Output: Zero
print(classify_number(5))   # Output: Positive