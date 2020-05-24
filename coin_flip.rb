class Coinflip
  def initialize (bankroll)
    @bankroll = bankroll
  end

  def start_game

  end
  def heads_or_tails
    puts "You have #{@bankroll.rounded_balance}"
    puts "How much would you like to bet?"
    bet = gets.strip.to_i
  

    puts "Chose Heads or tails"
    puts "1) Heads"
    puts "2) Tails"

    @coin = ['heads', 'tails'].sample
    
    user_choice = gets.strip

    if @coin == user_choice
      @moneywon = 2 * bet
      puts "WINNER"
      @bankroll += @moneywon
    else
      @bankroll -= bet
      puts "You lost"
    end
    puts "Would you like to try again?(y/n)"
      user_input = gets.strip
      if user_input == "y"
        coinflip
      elsif user_input == "n"

      else
        puts "Invalid input try again"
      end
    end
  end

