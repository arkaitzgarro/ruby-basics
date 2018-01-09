print "What's your age: "
age = gets.chomp.to_i

if age >= 18
    puts "Cheers!"
else
    puts "Nope!"
end

puts "Cheers!" if age >= 18
puts "Nope!" if age < 18

puts "Cheers!" unless age < 18
puts "Nope!" unless age >= 18