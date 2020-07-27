INPUT_LINE = gets.chomp!.split(" ").map! { |i| i.to_i }
A = INPUT_LINE[0]
B = INPUT_LINE[1]
puts ((B - 1).to_f / (A - 1)).ceil
