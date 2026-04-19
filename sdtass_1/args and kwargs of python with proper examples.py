"""
*args and **kwargs in Python

In Python, *args and **kwargs are used to pass a variable number of arguments to a function.

1. *args (Non-Keyword Arguments):
   - The *args parameter allows you to pass a variable number of non-keyword (positional) arguments to a function.
   - It collects all the positional arguments passed to the function into a tuple.
   - The word 'args' is just a convention; you can use any name, but the asterisk (*) is required.

Example of *args:
"""

def sum_all(*args):
    result = 0
    for num in args:
        result += num
    return result

print("Sum using *args:", sum_all(1, 2, 3, 4, 5))  # Output: 15

"""
2. **kwargs (Keyword Arguments):
   - The **kwargs parameter allows you to pass a variable number of keyword (named) arguments to a function.
   - It collects all the keyword arguments passed to the function into a dictionary.
   - The word 'kwargs' is just a convention; you can use any name, but the double asterisk (**) is required.

Example of **kwargs:
"""

def print_info(**kwargs):
    for key, value in kwargs.items():
        print(f"{key}: {value}")

print("\nInfo using **kwargs:")
print_info(name="Alice", age=30, city="New York")

"""
Using *args and **kwargs together:
   - You can use both in the same function, but *args must come before **kwargs.

Example of both:
"""

def display_data(*args, **kwargs):
    print("\Positional arguments (*args):")
    for arg in args:
        print(arg)

    print("\nKeyword arguments (**kwargs):")
    for key, value in kwargs.items():
        print(f"{key}: {value}")

print("\nUsing both:")
display_data(10, 20, 30, course="Python", level="Beginner")

