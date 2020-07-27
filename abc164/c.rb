N = gets.chomp!.to_i
hash = {}
N.times do
  str = gets.chomp!
  hash[str] = 0 unless hash.has_key?(str)
end
puts hash.length
