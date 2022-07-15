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



