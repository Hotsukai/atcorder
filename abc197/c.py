N = int(input())
A = input().split()

op_cnt = N - 1  # すき間の個数
index = 0
min_num = 2**30
cache ={}
for i in range(2 ** op_cnt):
    index += 1
    op = ["|"] * op_cnt  
    for j in range(op_cnt):
        if (i >> j) & 1:
            op[op_cnt - 1 - j] = "^"  
    formula = ""
    for p_n, p_o in zip(A, op + [""]):  
        formula += p_n + p_o
    if index == 1 or index == (2 ** op_cnt):
        continue
    # formula ='('+formula+')'
    # formula =  formula.replace('^',')^(')
    or_results=[]
    for sub_formula in formula.split('^'):
        if sub_formula not in  cache:
            or_results.append(eval(sub_formula))
        else:
            or_results.append(cache[sub_formula])
    # print(or_results)
    formula = '^'.join((map(str,or_results)))
    result = eval(formula)
    if result < min_num:
        min_num = result
print(min_num)