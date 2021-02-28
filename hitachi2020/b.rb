A, B, M = gets.chomp!.split(" ").map { |a| a.to_i }
A_array = gets.chomp!.split(" ").map { |a| a.to_i }
B_array = gets.chomp!.split(" ").map { |b| b.to_i }
min_value = 2 * 10 ** 5

M.times do
  x, y, c = gets.chomp!.split(" ").map { |a| a.to_i }
  tmp_val = A_array[x - 1] + B_array[y - 1] - c
  min_value = tmp_val if tmp_val < min_value
end
min_without_coupon = A_array.min() + B_array.min()
# min_without_coupon = A_array.min +B_array.min
#多分こう解釈されてる
# min_without_coupon = A_array.min(+B_array.min())
puts(min_value < min_without_coupon ? min_value : min_without_coupon)
