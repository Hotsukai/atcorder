INPUT = gets.chomp!.split(" ").map! { |i| i.to_i }
A_len_of_long = INPUT[0]
B_len_of_short = INPUT[1]
H = INPUT[2]
M = INPUT[3]

def radian(degree)
  degree * Math::PI / 180.0
end

def distance(a_x, a_y, b_x, b_y)
  Math.sqrt((a_x - b_x) ** 2 + (a_y - b_y) ** 2)
end

angle_long = M * 6.0
angle_short = H * 30.0
angle_short += (angle_long / 360.0) * 30.0

long_x = A_len_of_long * Math.cos(radian(angle_long))
long_y = A_len_of_long * Math.sin(radian(angle_long))
short_x = B_len_of_short * Math.cos(radian(angle_short))
short_y = B_len_of_short * Math.sin(radian(angle_short))
puts distance(long_x, long_y, short_x, short_y)
