# # シンボルと文字列の違い
# :apple.class
# 'apple'.class
# # symbleはRubyの内部では整数として管理される
# 'apple' == 'apple'
# :apple == :apple

# # 文字列をハッシュのキーにする
# currencies = {:japan=> 'yen', :us => :doller, 'indea' => 'rupee'}
# #文字列を使って値を取り出す(文字列よりも高速)
# puts currencies[:japan]

# タスクの状態を整数値で管理する（処理効率は良いが、可読性が低い）
# status = 2
# case status
# when 0 # todo
#     'これからやります'
# when 1 # doing
#     '今やっています'
# when 2 #done
#         'おわりました'
# end

# タスクの状態をシンボルで管理する(処理効率も可読性も良い)

# status = :todo

# case status
# when :todo # todo
#     'これからやります'
# when :doing # doing
#     '今やっています'
# when :done #done
#         'おわりました'
# end

# =>ではなく、"シンボル: 値"の記法でハッシュを作成する
currencies = {japan: :yen, us: :doller, india: :rupee }
currencies[:us]

# メソッドのキーワード引数とハッシュ
def buy_burger(menue, drink, potato)
    #ハンバーガーを購入
    if drink
        #ドリンクを購入
    end
    if potato
        #ポテトを購入
    end
end

#チーズバーガーとドリンクとポテトを購入する
buy_burger('cheese', drink:true, poteto:true)

#フィッシュバーガーとドリンクを購入する
buy_burger('fish', drink:true, poteto:false)

