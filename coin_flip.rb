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
        @bet= Float(bet) rescue false
      end
        until @bet1<=@bankroll.balance
          puts "You don't have enough money".colorize(:red)
          place_bet
        end
    end

  def heads_or_tails
    puts "Chose Heads or Tails".colorize(:blue)
    puts "1) Heads"
    puts "2) Tails"

    @coin = ['heads', 'tails'].sample

    user_choice = gets.downcase
    puts user_choice

    if @coin == user_choice
      moneywon = 5 * bet
      puts "WINNER"
      @bankroll += moneywon
    else
      puts "You lost"
      @bankroll -= bet
    end
  end
end


