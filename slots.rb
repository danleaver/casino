### Game Rules ###
# Three Row, Three Column (5 options) --> 3 pay off lines per spin --> 1 horizontal and 2 diagnols

# Money values:
# 1. penny
# 2. nickle
# 3. quarter
# 4. dollar
class Slots
# Slot Machine Array # --> 5 combinations
@column_options = [1, 2, 3, 4, 5]

puts "\nWelcome to the Slot Machines!\n"

### Impliment ###
# 1.) jackpot
# 2.) number of spins
# 3.) types of slots (penny, nickle, quarter, dollar)

  def initialize(bankroll) 
    @bankroll = bankroll
  end

  def game_play
    # puts "How many times do you want to spin"
    # spin_times = gets.chomp.to_i
    @col_1 = @column_options.shuffle
    @col_2 = @column_options.shuffle
    @col_3 = @column_options.shuffle
    if @col_1[0] == @col_2[0] && @col_1[0] == @col_3[0]
      puts "first row win"
      winning_set
    elsif @col_1[1] == @col_2[1] && @col_1[1] == @col_3[1]
      puts "second row win"
      winning_set
    elsif @col_1[2] == @col_2[2] && @col_1[2] == @col_3[2]
      puts "third row win"
      winning_set
    elsif @col_1[0] == @col_2[1] && @col_1[0] == @col_3[2]
      puts "backslash win"
      winning_set
    elsif @col_1[2] == @col_2[1] && @col_1[2] == @col_3[0]
      puts "forwardslash win"
      winning_set
    else
      puts "you lost"
      game_play
    end
  end


  def winning_set
    puts "#{@col_1[0..2]}\n#{@col_2[0..2]}\n#{@col_3[0..2]}"
  end

end
