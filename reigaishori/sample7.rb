# 引数で渡された国名に応じてしその通貨名を返すメソッドを定義
# 予期しない条件は異常終了させる
# elseに入ったら例外を発生させるパターン(良い例)
def cuurency_of(country)
    case country

    when :japan
        'yen'
    when :us
        'doller'
    # when :india
    else 
        raise ArgumentError, "無効な国名です。#{country}"
    end
end

# 想定外の国名を渡すとnilが返る
cuurency_of(:italy)

