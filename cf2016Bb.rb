INPUT_LINE = gets.chomp!.split(" ").map! { |i| i.to_i }
N = INPUT_LINE[0]
A = INPUT_LINE[1]
B = INPUT_LINE[2]
S = gets.chomp!.split("")

confirm_a = 0
confirm_b = 0

S.each do |_s|
  if confirm_a + confirm_b < A + B
    case _s
    when "a"
      puts "Yes"
      confirm_a += 1
    when "b"
      if confirm_b < B
        confirm_b += 1
        puts "Yes"
      else
        puts "No"
      end
    when "c"
      puts "No"
    end
  else
    puts "No"
  end
end
