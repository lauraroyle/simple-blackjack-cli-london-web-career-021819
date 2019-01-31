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
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user #call method above to puts "Type 'h' to hit or 's' to stay"
  player_input = get_user_input #create variable to hold player_input
  if player_input == "h"
    return deal_card
  elsif player_input == "s"
    "You stay at #{card_total}"
    exit
  else
    invalid_command
    return nil
  end
end

def invalid_command
  # code invalid_command here
  puts "Sorry, that input is invalid."
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
