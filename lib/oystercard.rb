class Oystercard

  attr_reader :balance

  STARTING_BALANCE = 0

  def initialize(balance = STARTING_BALANCE)
    @balance = balance
  end

  def top_up(num)
    @balance += num
  end
  
end



=begin
reader
def balance
  @balance
end


writer

def balance(num)
  @balance = num
end

accessor
def balance(num)
  @balance = num
end
def balance
  @balance
end
=end
