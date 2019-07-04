require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = 0
  for i in 1..2
    card_total += deal_card
  end
  display_card_total(card_total)
  return card_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    current_card_total
  elsif input == 'h'
    current_card_total += deal_card
  else
    invalid command
    prompt_user
  end
  current_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_card_total = initial_round
  card_sum = 0
  until card_sum > 21
    card_sum += hit?(current_card_total)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end
    
