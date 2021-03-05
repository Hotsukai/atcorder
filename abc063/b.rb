chars = gets().chomp!.split("")
char_hash={}
chars.each do |char|
    if char_hash.has_key?(char)
        puts("no")
        exit()
    else
        char_hash[char]=1
    end
end

puts("yes")