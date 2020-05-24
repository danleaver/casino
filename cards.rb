class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :rank, :suit, :color
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'Spades', 'Black')
  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end
 end

class Blackjack_cards
    # Getter and Setter methods for rank, suit and color
    attr_accessor :rank, :suit, :value
    # Gets called when you call the new method to create an instance
    # card = Card.new('10', 'Spades', 'Black')
    def initialize(rank, suit, value)
      @rank = rank
      @suit = suit
      @value = value
    end

    def value 
      return 10 if ["J", "Q", "K"].include?(@value)
      return 11 if @value =="A"
      return @value
    end
end
