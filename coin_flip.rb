
    
    def coinflip
      puts "You have $#{@bankroll}."
      puts "How much would you like to bet?"
      bet = gets.strip.to_i
    
  
      puts "Chose Heads or tails"
      puts "1) Heads"
      puts "2) Tails"

      coin = ['heads', 'tails'].sample
      
      user_choice = gets.strip

      if coin == user_choice
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





  #     choose = gets.strip.to_i

  #     flip = 1+rand(1).to_i #random number between 0 and 1
  #     # flip = 1? puts "It was heads" : puts "Its was tails"
  #     if choose = flip
  #       @winnings = 2 * bet
  #       puts "Yay! You've won $#{@winnings}!"
  #       @bankroll += @winnings
  #     else
  #       puts "Boo! Better luck next time!"
  #     end

  #     print "Would you like to continue? (y to continue) "
  #       unless gets.chomp=="y" 
  #         puts "You have ended with $#{@bankroll}"
  #         @casino = Casino.new(@bankroll)
  #         @casino.menu
  #         break
  #       end
  #   end
  # end
