# hashパターン
case {name: 'Alice', age: 23}
    in {name:name, age:age}
    "name=#{name}, age=#{age}"
end

# 値にはvalueパターンのように、固定の値や===で比較可能な値を指定できる
case {name: 'Bob', age: 31, height:170 }
    in {name: 'Bob', age: 28.., height: }
    # :nameの値がBob, :ageの値が28以上かつ、キーに:heightが含まれればマッチ
    # :heightに対応する値はheightに代入される
    "height=#{height}"
end

# hashパターンとarrayパターンと組み合わせることも可能
case {name: 'Alice', children:['Nancy']}
    in {name: 'Alice', children:[child]}
    # :nameとchildrenのキーを持ち、なおかつchildrenの値が要素1個の配列であればマッチ
    "name=#{name}, child=#{child}"
end

# hashパターンはハッシュの各要素がin節で指定したパターン（キーと値、またはキーのみ）に部分一致すればマッチしたと判定される
case {name: 'Nancy', age: 30, gender: :female}
    in {name: 'Nancy', gender: }
    # in節に:ageを指定していないが、:nameと:genderの条件が一致するので全体としてマッチした
    "gender=#{gender}"
end


cars = [
    {name: 'The Beatle', engine: '105ps'},
    {name: 'Prius', engine: '98ps', motor: '72ps'},
    {name: 'Tesla', motor: '306ps'}
]

cars.each do |car|
    case car
        in {name:, engine: }
        # The BeatleもPriusもどちらもこのパターンにマッチする
        p "Gasoline: #{name} / engine: #{engine}"
        in {name:, motor:}
        p "EV: #{name} / motor: #{motor}"
        in {name:, engine:, motor:}
        # Priusはガソリン車のパターンに部分一致するので、下の処理は絶対に実行されない
        p "Hybrid: #{name}, engine: #{engine}, motor: #{motor}"
    end
end

# ただし、in節に{}を書いた場合は例外に「空のハッシュに完全一致」することがマッチの条件になる
case {a: 1}
in {}
# {a:1}は空のハッシュではないのでここにはマッチしない
'empty'
in {a:}
"a = #{a}"
end

case {}
in {}
#　空のハッシュ同士で完全一致するのでここにマッチする
'empty'
in {a:}
"a= #{a}"
end

# in節でkey => value形式を使うと構文エラーになる
# この制約により、hashパターンで使えるハッシュのキーは必然的にシンボルのみになる
case {name: 'Alice', age: 20}
    in {:name => n  :age => a}
    # 省略
end

# メソッドの引数の定義と同様に **を使って「任意のキーと値」を指定することもできる
case {name: 'Alice', age: 30, gender: :famele}
    in {name: 'Alice', **rest}
    # :nameがキーで値がAliceならマッチ。それ以外のキーと値は任意でrestに代入
    "rest=#{rest}"
end


# **を最初に使うと構文エラーになる
case {name: 'Alice', age: 20, gender: :famele}
    in {**rest, gender:}
    # 省略
end

# 変数として使わない**だけでも構わないが、**をつけなかった時と違いがないので、実際に使うことはあまりない。
case {name: 'Alice', age: 20, gender: :famele}
    in {name: 'Alice', **}
    # :nameがキーで値がAliceならマッチ。それ以外のキーと値は任意。（変数として扱わない）
    # ただし、in{name: 'Alice'}と書いた時と違いがない
    'MATCHED'
end

# **nilとした場合は、「他のキーと値がないこと」を指す
case {name: 'Alice', age: 20, gender: :famele}
    in {name:, **nil}
    # :name以外のキーがないことがマッチの条件となるので、case節のハッシュはマッチしない
end

case {name: 'Alice'}
    in {name:,  **nil}
    # :name以外のキーがないので、case節のハッシュはマッチする
    "name=#{name}"
end






















