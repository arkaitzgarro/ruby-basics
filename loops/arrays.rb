fruits = [ "apples", "oranges", "grapes" ]

for fruit in fruits do
  puts "I love #{fruit}"
end

fruits.each { |fruit| puts "I love #{fruit}" }
fruits.each_with_index { |fruit, index| puts "#{index}: #{fruit}"}

numbers = []
(1..5).each do |number|
  puts "Adding #{number} to the list"
  numbers.push(number)
end

numbers.each { |number| puts "Number was #{number}" }
