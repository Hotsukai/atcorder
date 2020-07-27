N = gets.chomp!.to_i
a_s = []
N.times do
  a_s.append(gets.chomp!.to_i)
end

# pp "***********************************#{N}"
count = 1
_next = a_s[0]
(1...N).each do |i_1|
  #   puts "count:#{count}, next:#{_next}"
  if _next == 2
    puts count
    exit
  end
  _next = a_s[_next - 1]
  count += 1
end
puts -1
