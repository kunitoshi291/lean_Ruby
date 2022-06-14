# # Rubyではメソッド内にスコープを限定した定数は定義できない
# def foo
#     # メソッド内部で定数を定義すると構文エラーになる
#     BAR = 123

#     BAR * 10
# end

# # トップレベルで定義する定数
# SOME_VALUE = 123

# class Product 
#     # クラス構文の直下で定義する定数
#     DEFOULT_PRICE = 0
# end

# mapメソッドの戻り値を定数に代入する
NUMBERS = [1,2,3].map{|n| n * 10}
p NUMBERS