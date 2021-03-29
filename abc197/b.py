H, W, X, Y = map(int, input().split(" "))
S = []
for h in range(H):
    line = input()
    _hoge = []
    for char in line:
        _hoge.append(char)
    S.append(_hoge)
count: int = 1
X = X - 1
Y = Y - 1

# みぎ
index = 1
while True:
    if X + index >= H:
        break
    if S[X + index][Y] == ".":
        count += 1
    else:
        break
    index += 1
# higdari
index = 1
while True:
    if X - index < 0:
        break
    if S[X - index][Y] == ".":
        count += 1
    else:
        break
    index += 1
# ue
index = 1
while True:
    if Y - index < 0:
        break
    if S[X][Y - index] == ".":
        count += 1
    else:
        break
    index += 1
# sita
index = 1
while True:
    if Y + index >= W:
        break
    if S[X][Y + index] == ".":
        count += 1
    else:
        break
    index += 1

print(count)
