# def greet 
#     p 'おはよう'
#     # ブロックの有無を確認してからyieldを呼び出す
#     if block_given?
#     # ここでブロックの処理を呼び出す
#        yield
#     end
#     p 'こんばんは'
# end

# greet

# greet do 
#     p 'こんにちは'
# end

#10.2.2 ブロックを引数として明示的に受け取る

# ブロックをメソッドの引数として受けとる
def greet(&block)
    puts 'おはよう'
    # callメソッドを使ってブロックを実行する
    text = block.call('こんにちは')
    puts text
    puts 'こんばんは'
end

greet do |text|
    text * 2
end

# ブロックなしで呼び出す
greet 