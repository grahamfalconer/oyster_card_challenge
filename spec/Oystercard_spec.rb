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
  end
end


#my_num = 5
#return my_num.class?
