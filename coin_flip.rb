class Coinflip

require 'colorize'
  def initialize (bankroll)
    @bankroll = bankroll
  end

  def start_game
    place_bet
    heads_or_tails
  end

  def place_bet  

    puts "You have #{@bankroll.rounded_balance}, place your bet.".colorize(:yellow)
      bet=gets.strip
      @bet1 = Float(bet) rescue false
      until @bet1
        puts "Bet must be a number".colorize(:red)
        bet= gets.strip
        @bet1 = Float(bet) rescue false
      end
        until @bet1<=@bankroll.balance
          puts "You don't have enough money".colorize(:red)
          place_bet
        end
    end

  def heads_or_tails
    puts "Chose Heads or Tails".colorize(:blue)
    puts "Heads"
    puts "Tails"

    @coin = ['heads', 'tails'].sample

    user_choice = gets.downcase
    puts user_choice

    if @coin == user_choice
      moneywon = 2 * @bet1
      puts "WINNER"
      @bankroll += moneywon
    else
      puts "You lost"
      @bankroll.balance -= @bet1
    end
  end2

  def play_again
    puts "Would you like to play again? (Y/N)"
    play=gets.strip.capitalize
    if play=="Y"
      start_game
    else
        user_selection
    end
  end
end


