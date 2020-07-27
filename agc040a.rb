INPUT_LINE = gets.chomp!.split("")
num = 0
array = [0]
INPUT_LINE.each do |char|
  if char == "<"
    num += 1
    array.push(num)
  else
    num -= 1
    array.push(num)
  end
end
pp array

dif = 0 - array.min
pp dif
pp array.sum
puts array.sum + dif * array.length
