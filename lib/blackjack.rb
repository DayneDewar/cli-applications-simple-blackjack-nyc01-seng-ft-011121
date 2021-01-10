def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card)
  total = card
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card)
  puts "Sorry, you hit #{card}. Thanks for playing!"
end

def initial_round()
  total = deal_card + deal_card
  display_card_total(deal_card)
  return total
end

def hit?(num)
  prompt_user
  user_input = get_user_input
  while user_input != 'h' && user_input != 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == 'h'
    num += deal_card
  end
  return num
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
    hit?(total)
    display_card_total(total)
  end
end_game
end
    
