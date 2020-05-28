class Coinflip

require 'colorize'
  def initialize (bankroll)
    @bankroll = bankroll
  end

  def start_game
    place_bet
    heads_or_tails
    play_again
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

    @coin = ['heads', 'tails']

    @user_choice = gets.strip.downcase

    if @coin.sample == @user_choice
      puts "WINNER".colorize(:green)
      @bankroll.balance += @bet1 * 10
    else
      puts "You lost".colorize(:red)
      @bankroll.balance -= @bet1
    end
  end

  def play_again
    puts "Would you like to play again? (Y/N)"
    play=gets.strip.capitalize
    if play=="Y"
      start_game
    else
        return
    end
  end
end


