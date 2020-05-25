### Game Rules ###
# Three Row, Three Column
# Multiple pay line options:
# 5 payoff lines - requires 5 * bet amount
  # 3 horizontal, 2 diagonal
# 3 payoff lines - requires 3 * bet amount
# 3 horizontal

# Money values:
# 1. penny
# 2. nickle
# 3. quarter
# 4. dollar

class Slots

  def initialize(bankroll)
    @bankroll = bankroll
  end

  def main_menu
    puts "Welcome to the Slots Area!"
    puts "\n"
    puts "Select from the following:"
    puts "1) Single Payout Slot"
    puts "2) Three Payout Slot"
    puts "3) Five Payout Slot" 
    puts "4) Exit"
  end

  def user_selection
    main_menu
    choice = gets.to_i
    case choice
    when 1
      one_payout
    when 2
      three_payout
    when 3
      five_payout
    when 4
      exit
    else
      puts "Wrong Input. Try Again"
      user_selection
    end
  end

    # User wagers 1 * bet amount
  def one_payout
    @spin = Array.new(3) { Array.new(3) {rand(1..4)} }
    if @spin[1][0] == @spin[1][1] && @spin[1][0] == @spin[1][2]
      puts "middle row win"
      winning_set_one
    else
      puts "You lost\n"
      puts "Would you like to spin again? (y/n)"
      user_input = gets.chomp.to_s
        if user_input == "y"
          one_payout
        else
          puts "Goodbye"
          exit
        end
    end
  end

  # User wagers 3 * bet amount      
  def three_payout
    @spin = Array.new(3) { Array.new(3) {rand(1..4)} }
    if @spin[0][0] == @spin[0][1] && @spin[0][0] == @spin[0][2]
      puts "\nfirst row win"
      winning_set_three
    elsif @spin[1][0] == @spin[1][1] && @spin[1][0] == @spin[1][2]
      puts "\nsecond row win"
      winning_set_three
    elsif @spin[2][0] == @spin[2][1] && @spin[2][0] == @spin[2][2]
      puts "\nthird row win"
      winning_set_three
    else
      puts "You lost\n"
      puts "Would you like to spin again? (y/n)"
      user_input = gets.chomp.to_s
        if user_input == "y"
          three_payout
        else
          puts "Goodbye"
          exit
        end
    end
  end

  # User wagers 5 * bet amount
  def five_payout
    @spin = Array.new(3) { Array.new(3) {rand(1..4)} }
    if @spin[0][0] == @spin[0][1] && @spin[0][0] == @spin[0][2]
      puts "\nfirst row win"
      winning_set_five
    elsif @spin[1][0] == @spin[1][1] && @spin[1][0] == @spin[1][2]
      puts "\nsecond row win"
      winning_set_five
    elsif @spin[2][0] == @spin[2][1] && @spin[2][0] == @spin[2][2]
      puts "\nthird row win"
      winning_set_five
    elsif @spin[0][0] == @spin[1][1] && @spin[0][0] == @spin[2][2]
      puts "\nbackslash win"
      winning_set_five
    elsif @spin[0][2] == @spin[1][1] && @spin[0][2] == @spin[2][0]
      puts "\nforwardslash win"
      winning_set_five
    else
      puts "You lost\n"
      puts "Would you like to spin again? (y/n)"
      user_input = gets.chomp.to_s
        if user_input == "y"
          five_payout
        else
          puts "Goodbye"
          exit
        end
    end
  end

  def winning_set_one
    puts "\nHere are your winning numbers"
    puts @spin.to_a.map(&:inspect)
    puts "\n"
    puts "You lost\n"
    puts "Would you like to spin again? (y/n)"
    user_input = gets.chomp.to_s
      if user_input == "y"
        one_payout
      else
        puts "Goodbye"
        exit
      end
  end

  def winning_set_three
    puts "\nHere are your winning numbers"
    puts @spin.to_a.map(&:inspect)
    puts "\n"
    puts "You lost\n"
    puts "Would you like to spin again? (y/n)"
    user_input = gets.chomp.to_s
      if user_input == "y"
        three_payout
      else
        puts "Goodbye"
        exit
      end
  end

  def winning_set_five
    puts "\nHere are your winning numbers"
    puts @spin.to_a.map(&:inspect)
    puts "\n"
    puts "You lost\n"
    puts "Would you like to spin again? (y/n)"
    user_input = gets.chomp.to_s
      if user_input == "y"
        five_payout
      else
        puts "Goodbye"
        exit
      end
  end

end