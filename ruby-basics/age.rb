print "What's your name: "
name = gets.chomp

print "What's your age: "
age = gets.chomp.to_i

age_in_2040 = (2040 - Time.now.year) + age

puts "#{name} your age in 2040: #{age_in_2040}"