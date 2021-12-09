require 'piggy_bank'

describe PiggyBank do
    it "can receive coins" do
        # Arrange
        piggy_bank = PiggyBank.new
        
        # Act, Assert
        #1 respond_to
        #2 to_not raise_error
        expect { piggy_bank.deposit_coin("50p") }.to_not raise_error
    end

    it "clings when we shake it and there are coins in it" do
        # Arrange
        piggy_bank = PiggyBank.new
        piggy_bank.deposit_coin "20p"

        # Act
        result = piggy_bank.shake

        # Assert
        expect(result).to eq("Cling!")
    end

    it "does not cling when we shake it and there are no coins in it" do
        # Arrange
        piggy_bank = PiggyBank.new

        # Act
        result = piggy_bank.shake

        # Assert
        expect(result).not_to eq("Cling!")
    end
end