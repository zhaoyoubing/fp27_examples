from dataclasses import dataclass
# requires pip install streams.py
from pystreamapi import Stream

@dataclass
class Person:
    name: str
    age: int

people = [
    Person("Alice", 20),
    Person("Bob", 15),
    Person("Charlie", 25),
    Person("Alex", 22)
]

# stream pipeline
(
Stream.of(people)
    .filter(lambda p: p.age > 18)
    .sorted(lambda p1, p2: p1.age - p2.age)
    .map(lambda p: p.name)
    .sorted() 
    .for_each(print)
)