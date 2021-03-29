N = int(input())
input_line = input()
num = 0
max_num = num
for char in input_line:
    if char=="I":
        num+=1
    else:
        num-=1
    if num>max_num:
        max_num = num 

print(max_num)