def currency_of(country)
    case country
        when :japan
         'yen'
        when :us
          'doller'
        when :india
          'rupe'
        else
          # 意図的に例外を発生させる。
          # raiseメソッドに文字列を渡すと、その文字列がエラーメッセージになる
        # raise "無効な国名です #{country}"
        # raiseメソッドに例外クラスのインスタンスを渡す(newの引数はエラーメッセージになる)
        raise ArgumentError.new("無効な国名です。#{country}")
    end
end

p currency_of(:japan)
p currency_of(:italy)


