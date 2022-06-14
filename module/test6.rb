# トップレベルのSecoundクラス
class Second
    def initialize(player, unifiorm_number)
        @player = player
        @unifiorm_number = unifiorm_number
    end
end

module Clock
    # ClockモジュールのSecoundクラス
    class Second
        def initialize(digits)
            @digits = digits
            # トップレベルのSecoundクラスをnewしたい
            @baseball_secound = Second.new('Alice', 13)
        end
    end
end
p Clock::Second.new(13)

