
require_relative 'cards'
require_relative 'blackjack_deck'
require_relative 'deck'


# Dealear gets 2 cards from deck
# player gets 2 cards from deck
# dealer needs to get close to 21
# player needs toget close to 21 by hitting the dealer
# if player or dealer goes over 21 they bust
# need the ability to bet money and subtract wins and losses.
#   how much do you win if you win the game? 
#     how much do you lose?



def blackjack
    puts "Welcome to the table"
    place_bet
    create_shuffled_deck
    # set_value_to_first_card
    # set_value_to_second_card
    # set_value_to_third_card
    # set_value_to_fourth_card
    dealer_hand
    player_hand
    get_new_card
end  
    

def create_shuffled_deck
  @deck = Blackjack_deck.new
  @shuffled_deck=@deck.shuffle_cards
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


def dealer_hand
  @dealer_cards = "#{@shuffled_deck[0].rank} of #{@shuffled_deck[0].suit} and a #{@shuffled_deck[1].rank} of #{@shuffled_deck[1].suit}"
  #value cannot exceed 21 in this exercise
end


def player_hand
  @player_cards = "#{@shuffled_deck[2].rank} of #{@shuffled_deck[2].suit} #{@shuffled_deck[2].value} and a #{@shuffled_deck[3].rank} of #{@shuffled_deck[3].suit} "
  # @value_of_hand = @shuffled_deck[2] += @shuffled_deck[3].
  puts "Your hand includes a #{@player_cards}. You are at #{@value_of_hand}."
end

def get_new_card
  puts "Would you like another card? (yes/no)"
    user_input = gets.downcase
    if user_input == 'yes'
      #if the value of players hand is over 21 automatic loss 

    elsif user_input == 'no'

    else
      puts "That is an invalid input, try again."
    end
end


def winner
#if player has higher valued hand than dealer, player wins  
  #gets double his money
end

def loser
#if dealer has higher valued hand than player, dealer wins
  #player loses betted money
end

def tie
# if they tie, there are no winnings
end























  # def set_value_to_first_card
  #   if @shuffled_deck[0].rank == "J"
  #     @shuffled_deck[0].rank = 10
  #   elsif @shuffled_deck[0].rank == "Q"
  #     @shuffled_deck[0].rank = 10
  #   elsif @shuffled_deck[0].rank == "K"
  #     @shuffled_deck[0].rank = 10
  #   elsif @shuffled_deck[0].rank == "A"
  #     @shuffled_deck[0].rank = 11
  #   else
  #     @shuffled_deck[0].rank=@shuffled_deck[0].rank.to_i
  #   end

  # end


  # def set_value_to_second_card
  #   if @shuffled_deck[1].rank == "J"
  #     @shuffled_deck[1].rank = 10
  #   elsif @shuffled_deck[1].rank == "Q"
  #     @shuffled_deck[1].rank = 10
  #   elsif @shuffled_deck[1].rank == "K"
  #     @shuffled_deck[1].rank = 10
  #   elsif @shuffled_deck[0].rank == "A"
  #     @shuffled_deck[1].rank = 11
  #   else
  #     @shuffled_deck[1].rank=@shuffled_deck[1].rank.to_i
  #   end
  # end


  # def set_value_to_third_card
  #   if @shuffled_deck[2].rank == "J"
  #     @shuffled_deck[2].rank = 10
  #   elsif @shuffled_deck[2].rank == "Q"
  #     @shuffled_deck[2].rank = 10
  #   elsif @shuffled_deck[2].rank == "K"
  #     @shuffled_deck[2].rank = 10
  #   elsif @shuffled_deck[2].rank == "A"
  #     @shuffled_deck[2].rank = 11
  #   else
  #     @shuffled_deck[2].rank=@shuffled_deck[2].rank.to_i
  #   end
  # end


  # def set_value_to_fourth_card
  #   if @shuffled_deck[3].rank == "J"
  #     @shuffled_deck[3].rank = 10
  #   elsif @shuffled_deck[3].rank == "Q"
  #     @shuffled_deck[3].rank = 10
  #   elsif @shuffled_deck[3].rank == "K"
  #     @shuffled_deck[3].rank = 10
  #   elsif @shuffled_deck[3].rank == "A"
  #     @shuffled_deck[3].rank = 11
  #   else
  #     @shuffled_deck[3].rank=@shuffled_deck[3].rank.to_i
  #   end
  # end



