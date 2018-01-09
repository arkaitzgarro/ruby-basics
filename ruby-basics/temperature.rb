print "What's the temperature: "
current_temperature = gets.chomp.to_f

if current_temperature < 5
    puts "Parka weather!" 
elsif current_temperature > 4 && current_temperature < 18
    puts "Jacket weather!"
else
    puts "T-shirt weather"
end