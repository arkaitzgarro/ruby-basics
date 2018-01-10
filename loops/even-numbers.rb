number = 0
loop do
  number = number.next
  print "#{number} " if number.even?
  break if number == 100
end

puts "\n------"

for number in 1..100
  print "#{number} " if number.even?
end

puts "\n------"

(1..100).step(1) { |i| print "#{i} " if i.even? }

puts "\n------"

(2..100).step(2) { |i| print "#{i} " }

puts "\n------"

(2..100).step(2).each_with_index { |number, index| print "#{index}: #{number} " }

puts "\n------"

print "Max number: "
max = gets.chomp.to_i

(2..max).step(2) { |i| print "#{i} " }
