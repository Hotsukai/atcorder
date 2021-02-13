N = int(input())
max2num = 1
while True:
    if max2num < N:
        buf = max2num
        max2num = max2num*2
    elif max2num == N:
        print(max2num)
        exit()
    else:
        print(buf)
        exit()
