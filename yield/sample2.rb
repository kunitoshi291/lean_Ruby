# ブロックパラメータの個数に応じて、yieldで渡す個数と内容を変えるコード

def greet(&block)
    puts "おはよう"
    text=
    if block.arity == 1
        # ブロックパラメータが1個の場合
        yield "こんにちは"
    elsif block.arity == 2
        # ブロックパラメータが2個の場合
        yield "こんに", "ちは"
    end
    p text
    puts "こんにちは"
end

# 1個のブロックパラメータでメソッドを呼び出す
greet do |text|
    text * 2
end

# 2個のブロックパラメータでメソッドを呼び出す
greet do |text_1, text_2|
    text_1 * 2 + text_2
end
