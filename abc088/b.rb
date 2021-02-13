N=gets.chomp!.to_i
a=gets.chomp.split.map(&:to_i)

a.sort!.reverse!
# puts a
sum_alice=0
sum_bob=0
a.each_with_index do |_a,i|
    if i.even?
       sum_alice+=_a 
    else
        sum_bob+=_a
    end
end
puts(sum_alice-sum_bob)