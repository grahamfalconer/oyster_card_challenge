class Oystercard

  attr_reader :balance

  STARTING_BALANCE = 0
  CARD_LIMIT = 90

  def initialize(balance = STARTING_BALANCE)
    @balance = balance
  end

  def top_up(num)
    raise "you cannot top up #{num} as it brings your card over the limit" if @balance + num > CARD_LIMIT
    @balance += num
  end

  def deduct
    @balance -= 1
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
