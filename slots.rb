### Game Rules ###
# Winning combinations are any of the same number

# The single payout slot costs $1.00 to play
# Winning combination is only on the middle row
# Payout for win is $3.00

# The three payot slot costs $3.00 to play
# Winning combinations can be on any row
# Payout for win is $15.00

# The five payout slot cost $5.00 to play
# Winning combinations are any of the three rows or 2 diagonals
# Payout for win is $25.00

class Slots

  def initialize(bankroll)
    @bankroll = bankroll
  end

  def main_menu_slots
    puts "________________________________________________"
    puts "Welcome to the dollar Slots Area!"
    puts "Winning numbers recieve 5 times the play amount!"
    puts "\n"
    puts "Your current bankroll is #{@bankroll.rounded_balance}"
    puts "Select from the following:"
    puts "\n"
    puts "1) Single Payout Slot ($1.00 per spin)"
    puts "2) Three Payout Slot ($3.00 per spin)"
    puts "3) Five Payout Slot ($5.00 per spin)" 
    puts "4) Go Back to Casino"
  end

  def user_start
    main_menu_slots
    choice = gets.to_i
    case choice
    when 1
      one_payout
    when 2
      three_payout
    when 3
      five_payout
    when 4
      return
    else
      puts "Wrong Input. Try Again"
      user_start
    end
  end

    # User wagers 1 * bet amount
  def one_payout
    @cost_1 = 1.00
    puts "\nSpinning..."
    @spin = Array.new(3) { Array.new(3) {rand(1..2)} }
    if @spin[1][0] == @spin[1][1] && @spin[1][0] == @spin[1][2]
      puts "middle row win"
      winning_set_one
    else
      @bankroll.balance = @bankroll.balance - @cost_1
      puts "You lost. Your current bankroll is #{@bankroll.rounded_balance}"
      puts "Would you like to spin again? (y/n)"
      user_input = gets.chomp.to_s
        if user_input == "y"
          one_payout
        else
          user_start
        end
    end
  end

  # User wagers 3 * bet amount      
  def three_payout
    @cost_3 = 3.00
    puts "\nSpinning..."
    @spin = Array.new(3) { Array.new(3) {rand(1..5)} }
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
      @bankroll.balance = @bankroll.balance - @cost_3
      puts "You lost. Your current bankroll is #{@bankroll.rounded_balance}"
      puts "Would you like to spin again? (y/n)"
      user_input = gets.chomp.to_s
        if user_input == "y"
          three_payout
        else
          user_start
        end
    end
  end

  # User wagers 5 * bet amount
  def five_payout
    @cost_5 = 5.00
    puts "\nSpinning..."
    @spin = Array.new(3) { Array.new(3) {rand(1..5)} }
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
      @bankroll.balance = @bankroll.balance - @cost_5
      puts "You lost. Your current bankroll is #{@bankroll.rounded_balance}"
      puts "Would you like to spin again? (y/n)"
      user_input = gets.chomp.to_s
        if user_input == "y"
          five_payout
        elsif user_input == "n"
          user_start
        else
          user_selection
        end
    end
  end

  def winning_set_one
    @bankroll.balance = @bankroll.balance + (5.00 - @cost_1)
    puts "\nHere are your winning numbers!\n"
    puts @spin.to_a.map(&:inspect)
    puts "\n"
    puts "Your current bankroll is: #{@bankroll.rounded_balance}"
    puts "Would you like to spin again? (y/n)"
    user_input = gets.chomp.to_s
      if user_input == "y"
        one_payout
      else
        user_start
      end
  end

  def winning_set_three
    @bankroll.balance = @bankroll.balance + (15.00 - @cost_3)
    puts "\nHere are your winning numbers!\n"
    puts @spin.to_a.map(&:inspect)
    puts "\n"
    puts "Your current bankroll is: #{@bankroll.rounded_balance}"
    puts "Would you like to spin again? (y/n)"
    user_input = gets.chomp.to_s
      if user_input == "y"
        three_payout
      else
        user_start
      end
  end

  def winning_set_five
    @bankroll.balance = @bankroll.balance + (25.00 - @cost_5)
    puts "\nHere are your winning numbers!\n"
    puts @spin.to_a.map(&:inspect)
    puts "\n"
    puts "Your current bankroll is: #{@bankroll.rounded_balance}"
    puts "Would you like to spin again? (y/n)"
    user_input = gets.chomp.to_s
      if user_input == "y"
        five_payout
      else
        user_start
      end
  end
  
end
