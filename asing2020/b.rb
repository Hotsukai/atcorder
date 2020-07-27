# frozen_string_literal: true

cell_num = gets.chomp!.to_i
cell_contents = gets.chomp!.split(' ').map!(&:to_i)
# pp cell_contents
target_count=0

cell_contents.each_with_index do |cell_content,i|
    # target_count+=1 if  cell_content%2==1 and (i+1)%2==1
    target_count+=1 if  cell_content%2==1 and ((i+1)%2).odd?
    

end 
puts target_count