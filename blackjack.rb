
require_relative 'cards'
require_relative 'deck'


# Dealear gets 2 cards from deck
# player gets 2 cards from deck
# dealer needs to get close to 21
# player needs toget close to 21 by hitting the dealer
# if player or dealer goes over 21 they bust
# need the ability to bet money and subtract wins and losses.
#   how much do you win if you win the game? 
#     how much do you lose? 

# class Blackjack
  
#   def initialize 



# end

# 

def blackjack
  welcome
end

def welcome
  
  puts "Welcome to the table"
  place_bet

end

def place_bet
  puts "You have $#{@bankroll}, place your bet."
    bet=gets.strip
    @bet= Float(bet) rescue false
    until @bet
      puts "Bet must be a number"
      bet= gets.strip
      @bet= Float(bet) rescue false
    end
      until @bet<=@bankroll
        puts "You don't have enough money"
        place_bet
      end
  end

def player_hand

end




# deck = Deck.new
# puts deck

