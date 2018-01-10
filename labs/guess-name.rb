@gameOptions = {
  playing: false,
  lowerBound: 0,
  higherBound: 0,
  secretNumber: 0,
  guesses: 0
}

def askToPlay
  puts "Want to play a game? 👏🏼"

  loop do
    answer = gets.chomp.upcase
    break if answer == 'Y'
    abort("Okaybye") if answer == 'N'
    puts "TELL ME."
  end

  puts "Yay!"
end

def askOptions 
  puts "It's a guess-the-numbah game. So I need a low and a high bound."
  lowerBound = 0
  higherBound = 0

  loop do
    puts "Lowerbound: "
    lowerBound = gets.to_i
    break if lowerBound > 0
    puts "Please fill in a number above 0. Trust me, do it."
  end

  loop do
    puts "Higherbound: "
    higherBound = gets.to_i
    break if higherBound >= lowerBound
    puts "Please fill in a number above the lowerBound. Trust me, do it."
  end

  @gameOptions[:lowerBound] = lowerBound
  @gameOptions[:higherBound] = higherBound
end

def startGame
  @gameOptions[:secretNumber] = rand(@gameOptions[:lowerBound]...@gameOptions[:higherBound])
  @gameOptions[:playing] = true

  puts "There we go, guess a number between #{@gameOptions[:lowerBound]} and #{@gameOptions[:higherBound]}"

  loop do 
    answer = gets.to_i
    puts "Wrong!" if answer != @gameOptions[:secretNumber]
    puts "Out of bounds" if answer < @gameOptions[:lowerBound] || answer > @gameOptions[:higherBound]

    @gameOptions[:guesses] += 1
    
    break if answer == @gameOptions[:secretNumber]
    break if @gameOptions[:guesses] == 10
    puts "Try again"
  end

  if @gameOptions[:guesses] <= 10
    puts "YOU DID IT! You only needed #{@gameOptions[:guesses]} guesses." 
  else 
    puts "loser."
  end
end

askToPlay
askOptions
startGame