def to_hex(r, g, b)
    [r, g, b ].sum('#') do |n|
        # 変数（ブロックパラメータ）の中身をターミナルに出力する
        puts n
        n.to_s(16).rjust(2, '0')
    end
end


# printデバッグは変数やメソッドの値を出力するだけでなく、メソッドや条件分岐が意図した通りに実行されているかを確認する場合にも使われる。
def greet(country)
    # greetメソッドがよばれたことを確認。
    puts 'greet start.'
    return 'countryを入力してください' if country.nil?

    if country == 'japan'
        # 真の分岐に入ったことを確認
        puts 'japan'
        'こんにちは'
    else
        # 偽の分岐に入ったことを確認
        puts 'other'
        'hello'
    end
    p greet(japan)
end

