# variableパターン
# in節のパターンに変数を書いてローカル変数の宣言と代入を同時に行う利用パターン。
# in objのように書くと、あらゆるオブジェクトがマッチした変数objに代入される

# 文字列もマッチ
case 'Alice'
    in obj
    "obj=#{obj}"
end

# 数値もマッチ
case 123
    in obj
    "obj=#{obj}"
end

# 配列もマッチ
case [10,20]
    in obj
    "obj=#{obj}"
end

# 場合によっては代入ではなく、in節で事前に定義された変数の値を参照したい場合はピン演算子(^)を使う
alice = 'Alice'
bob = 'Bob'
name = 'Bob'

# ピン演算子を使って事前に定義した変数を参照する
case name
    in ^alice # in 'Alice'と書いたのと同じ
    'Aliceさん、こんにちは！'
    in ^bob # in 'Bob'と書いたのと同じ(ここにマッチ)
    'Bobさん、こんにちは！'
end


# ピン演算子は事前に定義された変数だけでなく、in節で代入された変数を同じin節で参照することできる

# 下記のコードは、配列の値が3つとも同じだった場合とそれ以外で出力を切り分ける例
records = [
    [7,7,7],
    [6,7,5]
]

records.each do |record|
    case record
        in [n, ^n, ^n] # 要素が3つでなおかつ3つとも同じ値であればマッチ
        p "all same: #{record}"
    else
        p "not same: #{record}"
    end
end

# ただし、ピン演算子は厳密には、variableパターンではなく、valueパターンとなり、マッチには===が利用
records = [
    [Integer, 1, 21],
    [Integer, 3, 'x']
]

records.each do |record|
    case record
        in [klass, ^klass, ^klass] # 最後の２要素が最初の要素のクラスのインスタンスであればマッチ
        p "match: #{record}"
    else
        p "not match: #{record}"
    end
end

# in節でインスタンス変数を使うと構エラーとなる
case 1
    in @n
    "@n= #{@n}"
end

# ピン演算子を使う場合、いったんローカル変数に入れ直す必要がある
@n = 1
n = @n
case 1
    in ^n
    '1です'
end

























































