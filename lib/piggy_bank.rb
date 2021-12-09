class PiggyBank
    def initialize
        @has_coin = false
    end

    def deposit_coin(coin)
        @has_coin = true
    end

    def shake
        return "Cling!" if @has_coin
    end
end