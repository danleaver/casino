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
require_relative 'bankroll'
require_relative 'user'
require_relative 'slots'
require_relative 'blackjack'
require_relative 'high_low'

puts "Hello #{user} your bankroll is #{@bankroll} "
puts ""

def main_menu
  
  puts "1) Play Slots"
  puts "2) Play Black Jack"
  puts "3) Play High/Low" 
  puts "4) Amount in Bankroll"
  puts "5) Exit"
  
end

def user_selection
  choice = gets.to_i
  when 1
    slots
  when 2
    blackjack
  when 3
    high_low
  when 4
    bankroll
  when 5
    exit
  end
end
