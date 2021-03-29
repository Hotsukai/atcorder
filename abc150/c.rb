N = gets.chomp!.to_i
P_array = gets.chomp!.split(" ").map { |i| i.to_i }
Q_array = gets.chomp!.split(" ").map { |i| i.to_i }
permutaions = (1..N).to_a.permutation.to_a
p_index = 0
q_index = 0
permutaions.each_with_index do |perm, i|
  if P_array == perm
    p_index = i
  end
  if Q_array == perm
    q_index = i
  end
  if p_index != 0 and q_index != 0
    break
  end
end

puts((p_index-q_index).abs)