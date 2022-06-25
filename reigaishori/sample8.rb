# # ensureの代わりにブロックを使う
# # ブロック付きでオープンすると、メソッドの実行後に自動的にクローズされる
# File.open('some.txt', 'w')do |file|
# file << 'Hello'
# # わざと例外を発生させる
# 1/0
# end

# else節を使わない場合
# begin
#     p 'Hello'
#     p '例外は発生しませんでした。' 
# rescue
#     p '例外が発生しました'
# end

#　例外処理と戻り値
# 例外が発生せず、最後まで正常に処理が進んだ場合はbegin節の最後の式が戻り値となる
# 正常に終了した場合
ret = 
begin
    'Ok'
rescue
    'error'
ensure
    'ensure'
end

p ret

# 例外が発生した場合
ret = 
begin
    1 / 0 # ZeroDivisionErrorを発生させる
    'OK'
    rescue
        'error'
    ensure
        'ensure'
    end
    p ret

# 上の例では例外処理の戻り値を変数に格納したが、次のようにメソッドの戻り値として使うこともできる
def some_method(n)
    begin
        1 / n
        'OK'
    rescue
        'error'
    ensure
        'ensure'
    end
end

p some_method(1)
p some_method(0)