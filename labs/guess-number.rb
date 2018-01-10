def ask_to_play
  print "Want to play a game? (Y/N) 👏: "

  loop do
    answer = gets.chomp.upcase
    break if answer == 'Y'
    abort("Okaybye") if answer == 'N'
    print "Dude, Y or N: "
  end
end

def ask_for_number(message, error_message, lower_bound)
  number = 0
  loop do
    print message
    number = gets.to_i
    break if number > lower_bound
    puts error_message
  end
  number
end

def ask_for_options
  game_options = {}

  puts "It's a guess-the-numbah game. So I need a low and a high bound."

  game_options[:lower_bound] = ask_for_number("Lower bound: ", "Please fill in a number above 0. Trust me, do it.", 0)
  game_options[:higher_bound] = ask_for_number("Higher_bound bound: ", "Please fill in a number above the lower_bound. Trust me, do it.", game_options[:lower_bound])

  game_options
end

def start_game(game_options)
  guesses = 0
  secret_number = rand(game_options[:lower_bound]..game_options[:higher_bound])

  puts "There we go, guess a number between #{game_options[:lower_bound]} and #{game_options[:higher_bound]}"

  loop do
    answer = gets.to_i
    guesses += 1

    puts "Wrong!" if answer != secret_number
    puts "Out of bounds" if answer < game_options[:lower_bound] || answer > game_options[:higher_bound]

    break if answer == secret_number
    break if guesses == 10
    puts "Try again"
  end

  if guesses < 10
    puts "YOU DID IT! You only needed #{guesses} guesses."
  else
    puts "L O S E R"
  end
end

ask_to_play
start_game ask_for_options
