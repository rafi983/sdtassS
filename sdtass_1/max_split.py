
s = input().strip()

balance = 0
ans = []
curr = []

for char in s:
    curr.append(char)
    if char == 'L':
        balance += 1
    else:
        balance -= 1

    if balance == 0:
        ans.append("".join(curr))
        curr = []

print(len(ans))
for res in ans:
    print(res)
