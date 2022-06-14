# クラスを使わない場合
# ユーザーのデータを作成する
users = []
users << {first_name:'Alice', last_name:'Ruby', age: 20}
users << {first_name:'Bob', last_name:'Python', age: 30}

# 氏名をつくるメソッド
def full_name(user)
    "#{user[:first_name]} #{user[:last_name]}"
end

# ユーザーのデータを表示する
users.each do |user|
    puts "氏名: #{user[:first_name]} # {user[:last_name]}, 年齢: #{user[:age]}"
end

# p users[0][:first_name]


# 勝手に新しいキーを追加
users[0][:country] = 'Japan'
# 勝手にfirst_nameを変更
users[0][:first_name] = 'Carol'
# ハッシュの中身が変更される
 p users[0]

 