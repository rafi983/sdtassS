
from collections import Counter

n = int(input())
a = list(map(int, input().split()))

counts = Counter(a)
removed = 0

for x, c in counts.items():
    if c < x:
        removed += c
    else:
        removed += c - x

print(removed)
