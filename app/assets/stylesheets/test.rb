puts="Enter the number"
number=get.chomp.to_i

if number == (2*(number/2))
  puts "#{number} is even"
else
  puts "#{number} is odd"
end
