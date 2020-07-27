# frozen_string_literal: true

INPUT_LINE = gets.chomp!.split(' ').map!(&:to_i)
N = INPUT_LINE[0]
K = INPUT_LINE[1]
M = INPUT_LINE[2]
scores = gets.chomp!.split(' ').map!(&:to_i)
target = M * N - scores.sum
if target <= K and target >=0
  puts target
  elsif target<0
    puts 0
else
  puts(-1)
end
