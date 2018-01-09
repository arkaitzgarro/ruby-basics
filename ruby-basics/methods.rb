def print_hello
    puts "Welcome to Codaisseur"
end

print_hello()

def area(length, width)
    length.to_f * width.to_f
end

puts area(5, 5)
puts area("5", '5')
puts area("1", 'a')

def circumference(radius)
    Math::PI * radius.to_f
end

puts circumference(0)
puts circumference(1)
puts circumference(10)

def ask(message)
    print message
    gets.chomp
end

puts "Select a song to play next!"

song_title = ask("Title: ")
song_artist = ask("Artist: ")
song_released = ask("Year released: ")

puts "You selected the song \"#{song_title}\" by #{song_artist}, released in #{song_released}."