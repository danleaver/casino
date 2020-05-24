class HighLow
#create a menu
#explain the rules of the game
#explain how the game pays out when you win 
#explian tying in the game


require_relative 'cards'
require_relative 'deck'

#bring in the cards, shuffle the cards
#pick two random cards
#ask the player how much they want to bet

#Start the game
#bankroll is a variable that is passed in
def initialize(bankroll) 
  @bankroll = bankroll
end


def play_game
    place_bet
    start_game
    user_guess
    facecards_to_numbers_firstcard
    facecards_to_numbers_secondcard
    game_winner
    user_win_lost
end

#place a bet, check that it is a number and isn't greater then the bankroll
def place_bet  
puts "You have #{@bankroll.rounded_balance}, place your bet."
  bet=gets.strip
  @bet= Float(bet) rescue false
  until @bet
    puts "Bet must be a number"
    bet= gets.strip
    @bet= Float(bet) rescue false
  end
    until @bet<=@bankroll.balance
      puts "You don't have enough money"
      place_bet
    end
end

# place_bet

#generate a deck of cards, shuffles cards and 
def start_game
  deck = Deck.new
  @shuffled_deck=deck.shuffle_cards
  puts "The first card is the #{@shuffled_deck[0].rank} of #{@shuffled_deck[0].suit}"

end

#user guess's high or low and second card is shown
def user_guess
puts " Is your guess High or Low"
  guess=gets.strip.capitalize
unless guess == "High"|| guess=="Low"
  puts "You must guess High or Low"
  guess=gets.strip.capitalize
end
@guess = guess
puts "The second card is the #{@shuffled_deck[1].rank} of #{@shuffled_deck[1].suit}"
end
 


#converts first card to a number so they can be compared
def facecards_to_numbers_firstcard
  if @shuffled_deck[0].rank == "J"
    @shuffled_deck[0].rank = 11
  elsif @shuffled_deck[0].rank == "Q"
    @shuffled_deck[0].rank = 12
  elsif @shuffled_deck[0].rank == "K"
    @shuffled_deck[0].rank = 13
  elsif @shuffled_deck[0].rank == "A"
    @shuffled_deck[0].rank = 14
  else
    @shuffled_deck[0].rank=@shuffled_deck[0].rank.to_i
  end
  puts "The first card is equal to #{@shuffled_deck[0].rank}"
end

#converts second card to a number so they can be compared
def facecards_to_numbers_secondcard
  if @shuffled_deck[1].rank == "J"
      @shuffled_deck[1].rank = 11
  elsif @shuffled_deck[1].rank == "Q"
      @shuffled_deck[1].rank = 12
  elsif @shuffled_deck[1].rank == "K"
      @shuffled_deck[1].rank = 13
  elsif @shuffled_deck[1].rank == "A"
      @shuffled_deck[1].rank = 14
  else
    @shuffled_deck[1].rank=@shuffled_deck[1].rank.to_i
  end
  puts "The second card is equal to #{@shuffled_deck[1].rank}"
end

  

#determines if the game winner is high or low
  def game_winner
    if @shuffled_deck[0].rank<@shuffled_deck[1].rank
      puts "The winner is High"
      @winner = "High"
    else 
      puts "The winner is Low"
      @winner ="Low"
    end
    # puts @winner
  end

  #tells the planner if they won or lost and adds or subtracts from their bankroll
  def user_win_lost
    if @winner == @guess
      puts "You are a winner!"
      @bankroll.balance = @bankroll.balance + @bet
      puts @bankroll.rounded_balance
    else
      puts "You lost"
      @bankroll.balance = @bankroll.balance - @bet
      puts @bankroll.rounded_balance
    end
  end
end





#if user guess high, 
#Find out if it is a tie shuffled_deck[1]==shuffled_deck[0] if it is, no one wins

#if the user guessed high shuffled_deck[1]>shuffled_deck[0], then user wins
#if not user loosses

#if the user guesses low shuffled_deck[1]<shuffled_deck[0], the user wins
#if not user losses


  # puts "Do you have a coupon? Yes or No"
  # coupon=gets.strip.capitalize
  # puts coupon
  # if coupon == 'Yes'
  #   new_cost = @cart_cost*0.8
  #  puts " Please Pay $#{'%.2f'%new_cost.round(2)} "
  # else
  #   puts "You will be added to the mailing list"
  #   exit
  # end
  # exit



