def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(1..11)
  return num
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  return answer
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round

  card_1 = deal_card
  card_2 = deal_card
  card_total = card_1 + card_2
  display_card_total(card_total)
  return card_total

end

def hit?(current_card_total)

  prompt_user
  input = get_user_input

  if input == "h"
    current_card_total += deal_card
    return current_card_total

  elsif input == "s"
    return current_card_total

  else
    invalid_command
    prompt_user
    return current_card_total
  end
  display_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome
  hand_value = initial_round
  while hand_value <= 21
    hand_value = hit?(hand_value)
    display_card_total(hand_value)
    end

  end_game(hand_value)
end
