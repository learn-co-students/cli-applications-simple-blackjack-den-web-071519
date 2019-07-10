def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = ( rand(1..11) )
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
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(current_total)
  new_total = current_total
  prompt_user
  decision = get_user_input
    if decision == "s"
      !deal_card
    elsif decision == "h"
      new_card = deal_card
      new_total += new_card
    else 
      invalid_command
      prompt_user
    end 
  new_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
