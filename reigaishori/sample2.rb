begin
    'abc'.foo 
rescue ZeroDivisionError
    puts '0で徐算しました'

rescue NoMethodError
    puts '存在しないメソッドがよびだされました'
end
