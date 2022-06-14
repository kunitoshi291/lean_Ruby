# method_1にだけ例外処理を記述する
def method_1
    p 'method_1 start.'

    begin
        method_2
    rescue 
        p '例外が発生しました'
    end
    p 'method_1 end.'
end

def method_2
    p 'method_2 start.'
    method_3
    p 'method_2 end.'
end

def method_3
    p  'method_3 start.'
    # ZeroDivisionError(整数を0で徐算しようとした場合に発生する例外)を発生させる
    1/0
    p 'method_3 end.'
end

# 処理を開始
p method_1acs