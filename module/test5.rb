# # 名前空間を分けて名前の衝突を防ぐ
# class Second
#     def initialize(player, unifiorm_number)
#         @player = player
#         @unifiorm_number = unifiorm_number
#     end
# end

# class Second
#     def initialize(digits)
#         @digits = digits
#     end
# end

# # 二塁手のAliceを作成したい(が、区別できない)
# Second.new('Alice', 13)

# # 時計の13秒を作成したい(が、区別できない)
# Second.new(13)dfaf

module Baseball
    # これはBaseballモジュールに属するSecoundクラス
    class Second
        def initialize(player, unifiorm_number, number)
         @player = player
         @unifiorm_number = unifiorm_number
        end
    end
end

module Clock
    # これはClockモジュールに属するSecoundクラス
    class Second
        def initialize(digits)
            @digits = digits
        end
    end
end

# 二塁手のAliceを作成したい(ちゃんと区別できる)
Baseball::Secound.new('Alice', 13)

# 時計の13秒を作成したい(ちゃんと区別できる)
Clock::Second.new(13)








