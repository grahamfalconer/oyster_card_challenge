require './lib/oystercard'

describe Oystercard do
  let(:card) {Oystercard.new}
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
      new_card = Oystercard.new(0)
      y = new_card.balance
      x = 10
      expect { new_card.top_up(x) }.to change { new_card.balance }.from(y).to(x+y)
    end
  end
end


#my_num = 5
#return my_num.class?
