from typing import List

N = int(input())
A: List[int] = list(map(lambda num: int(num), input().rstrip().split(" ")))
winner_index: int = A.index(max(A))
half_index: int = int(len(A) / 2) - 1  # 8->3
# print(len(A) / 2)
sub_winner_rate = 0
if half_index > winner_index:
    sub_winner_rate = max(A[half_index + 1 :])
else:
    sub_winner_rate = max(A[:half_index+1])
# print(A[: half_index + 1])
# print(A[half_index + 1 :])
# print(sub_winner_rate)
print(A.index(sub_winner_rate) + 1)
