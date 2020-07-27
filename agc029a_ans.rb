s = gets.chomp!.split("")
N = s.length
count = 0
black_count = 0
s.each do |_s|
  black_count += 1 if _s == "B"
  count += black_count if _s == "W"
end

puts count
