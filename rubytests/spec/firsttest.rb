require_relative 'firstapp'
RSpec.describe "Users tries to Buy a soda" do
    before(:each) do
        @buyer = Buyer.new 10
    end


    context "when the user has money" do

        it "they buy the soda" do
            
            @buyer.money = 10
            expect(@buyer.buy_soda).to be true
        end

    end

    context 'user has no money' do
        it 'can not buy a soda'do
            
            @buyer.money = 0
            expect(@buyer.buy_soda).to eq(false)
        end    
    
    end

    context 'is messed up' do
        it 'should throw error' do
            expect(Buyer.new).to raise_error(ArgumentError)
        end
    end
    
end