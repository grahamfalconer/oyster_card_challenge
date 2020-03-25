require 'tube_station'

class Oystercard

  attr_reader :balance, :min_balance, :entry_station, :journeys_taken

  STARTING_BALANCE = 0
  CARD_LIMIT = 90
  MINIMUM_BALANCE = 1

  def initialize(balance = STARTING_BALANCE)
    @balance = balance
    @journeys_taken = []
  end

  def top_up(num)
    raise "you cannot top up #{num} as it brings your card over the limit" if @balance + num > CARD_LIMIT
    @balance += num
  end

  def touch_in(station)
    @entry_station = station
    if @balance < MINIMUM_BALANCE
      raise "Insufficient balance to touch in"
    elsif @balance >= MINIMUM_BALANCE
      @in_system = true
    end
  end

  def touch_out(station)
    deduct
    my_journey = {entry_station: @entry_station, exit_station: station}
    @journeys_taken << my_journey
    @entry_station = nil
  end

  def in_journey?
    !!@entry_station
  end

  def previous_journeys
    @journeys_taken
  end

  private

  def deduct
    @balance -= MINIMUM_BALANCE
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

# options = { font_size: 10, font_family: "Arial" } 
