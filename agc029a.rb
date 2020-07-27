s = gets.chomp!.split("")
N = s.length
count = 0
left_w_count = 0
num_of_w = s.count("W")

loop do
  left_w_count = s.index("B")
  (left_w_count..N - 1).each do |i|
    # pp "DEBUG:i=#{i}"
    if s[i] == "B" and s[i + 1] == "W"
      s[i] = "W"
      s[i + 1] = "B"
      count += 1
      flag = 0
      #   pp "DEBUG:s=#{s}"
      break
    end
  end
  break if left_w_count == num_of_w
end

puts count
