require './lib/oystercard'

describe Oystercard do
  let(:card) { Oystercard.new }
  let(:new_card) { Oystercard.new(50) }
  describe 'balance' do
    it "should respond to balance" do
      expect(card).to respond_to(:balance)
    end
    it "balance should respond to class with an integer" do
      expect(card.balance.class).to eq(Integer)
    end
    it "should respond to top_up" do
      expect(card).to respond_to(:top_up)
    end
    it "balance should be increased by topping up" do
      y = new_card.balance
      x = 10
      expect { new_card.top_up(x) }.to change { new_card.balance }.from(y).to(x+y)
    end
    it "doesn't top up past limit" do
      card_limit = 90
      expect { card.top_up(card_limit + 1)  }.to raise_error "you cannot top up #{card_limit + 1} as it brings your card over the limit"
    end
    it "should respond to deduct" do
      expect(card).to respond_to(:deduct)
    end
    it "balance should be decreased by deduct" do
      y = new_card.balance
      new_card.deduct
      expect(new_card.balance).to be < (y)
    end
  end
end



#my_num = 5
#return my_num.class?
