class Slots
### Game Rules ###
# Three Row, Three Column (5 options) --> 3 pay off lines per spin --> 1 horizontal and 2 diagnols

# Money values:
# 1. penny
# 2. nickle
# 3. quarter
# 4. dollar

# Slot Machine Array # --> 5 combinations
@column_options = ["1", "2", "3", "4", "5"]

puts "\nWelcome to the Slot Machine area!\n"

def main_menu
  puts "Choose from the options below:\n"
  puts "1.) Play the slots"
  puts "2.) See your wallet"
  puts "3.) Exit"
end

def user_selection
  choice = gets.chomp.to_i
  case choice
  when 1
    game_play
  when 2
    see_wallet    ### Think we can use this for all the classes
  when 3
    exit
  else 
    puts "Wrong input. Try again"
  end
end

### Impliment ###
# 1.) jackpot
# 2.) number of spins
# 3.) types of slots (penny, nickle, quarter, dollar)

def game_play
  # puts "How many times do you want to spin"
  # spin_times = gets.chomp.to_i
  col_1 = @column_options.shuffle
  col_2 = @column_options.shuffle
  col_3 = @column_options.shuffle
  if col_1[0] == col_2[0] && col_1[0] == col_3[0]
    puts "first row win"
  elsif col_1[1] == col_2[1] && col_1[1] == col_3[1]
    puts "second row win"
  elsif col_1[2] == col_2[2] && col_1[2] == col_3[2]
    puts "third row win"
  elsif col_1[0] == col_2[1] && col_1[0] == col_3[2]
    puts "backslash win"
  elsif col_1[2] == col_2[1] && col_1[2] == col_3[0]
    puts "forwardslash win"
  else
    puts "you lost"
    game_play
  end
end

def see_wallet
  puts "your in your wallet"
end

# def winning_set
#   p col_1
#   puts "\n"
#   p col_2
#   puts "\n"
#   p col_3
# end

main_menu
user_selection

end

