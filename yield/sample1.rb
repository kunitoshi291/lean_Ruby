def greet 
    p 'おはよう'
    # ブロックの有無を確認してからyieldを呼び出す
    if block_given?
    # ここでブロックの処理を呼び出す
       yield
    end
    p 'こんばんは'
end

greet

greet do 
    p 'こんにちは'
end