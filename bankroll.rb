class Bankroll
  attr_accessor :balance #allows to always return the value of the balance usiong .balance

  def initialize
    @balance=rand(100...1000)
  end

  def rounded_balance
    return "$#{'%.2f'%@balance.round(2)}"
  end  

end