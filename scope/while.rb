puts "All socks are in place"
while true
  count = count || 0
  count += 2
  puts "You are missing #{count} left socks!" unless count == 8
  break if count == 8
end
puts "In total you are missing #{count} left socks"
