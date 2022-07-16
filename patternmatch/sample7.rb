=begin 
「asパターン」
 asパターンは、パターンマッチしたオブジェクトを変数に代入する利用パターン。
例えば、以下のパターンマッチは[:nameが文字列で、:ageが18以上のハッシュ]には
マッチするが、このままでは:nameや:ageに対応する値を取得できない
=end

case {name: 'Bob', age: 43, gender: :man}
    in {name: String, age: 13..}
    # マッチするが、:nameや:ageの値が取得できない
end
# こんな時は、in節のパターンに"=> 変数名"と書くとマッチしたオブジェクトを変数に代入できる
case {name: 'Bob', age: 43, gender: :man}
    in {name: String=> name, age: 18.. => age}
    # => 変数名 の形式でマッチしたオブジェクトを変数に代入できる (asパターン)
    "name= #{name}, age= #{age}"
end