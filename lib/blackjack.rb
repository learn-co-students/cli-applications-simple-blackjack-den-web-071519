def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

sumStore = 0
def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  sum = 0
  sum += deal_card
  sum += deal_card
  display_card_total(sum)
end

def hit?(card_total)
  prompt_user
  keyPress = get_user_input
  if keyPress == 'h'
    card_total += deal_card
  elsif keyPress == 's'
    return card_total
  else
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
