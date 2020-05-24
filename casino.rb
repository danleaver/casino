#user Bob
#wallet 
#games
#high/low
#slots
#Blackjack
#Roulette
require 'colorize'
require 'pry'

require_relative 'cards'
require_relative 'deck'
require_relative 'dice'
# require_relative 'slots'
require_relative 'blackjack'
require_relative 'high_low'
require_relative 'bankroll'


puts "Welcome to SLC Casino"
@bankroll=Bankroll.new

puts "What is your name?"
user = gets.strip
puts "Hello #{user} your bankroll is #{@bankroll.rounded_balance} "

def main_menu
  
  puts "1) Play Slots"
  puts "2) Play Black Jack"
  puts "3) Play High/Low" 
  puts "4) Amount in Bankroll"
  puts "5) Exit"
  
end

def user_selection
  main_menu
  choice = gets.to_i
  case choice
  when 1
    slots
  when 2
    blackjack
  when 3
     newhighlow = HighLow.new(@bankroll)
     newhighlow.play_game
  when 4
    puts @bankroll.rounded_balance
  when 5
    exit
  end
  user_selection
end

user_selection

main_menu

