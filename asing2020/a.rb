# frozen_string_literal: true

INPUT_LINE = gets.chomp!.split(' ').map!(&:to_i)
# puts INPUT_LINE
min_number = INPUT_LINE[0]
max_number = INPUT_LINE[1]
div_number = INPUT_LINE[2]
# puts div_number
count = 0
(min_number..max_number).each do |num|
  count += 1 if num % div_number == 0
  #   puts num % div_number
end
puts count
