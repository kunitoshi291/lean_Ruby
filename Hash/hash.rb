# # 空のハッシュを作る
# {}
# currencies = 
#     {
#         'japan' => 'yen',
#         'us' => 'doller',
#         'india' => 'rupee'
#     }

# currencies.each do |key_value|
#     p   "#{key} : #{value}"
# end

a = {'x' =>1, 'y' => 2, 'z' => 3}
b = {'x' => 1, 'y' => 2, 'z' => 3}
a == b
p a

# ハッシュの中のハッシュ
params = {} # 'params' というハッシュを定義する ('parameters' の略)。

params[:user] = {name: "Kenta Takahashi", email: "takahashi@example.com"}
p params
p params[:user][:email]

# 配列や範囲オブジェクトと同様、ハッシュもeachメソッドに応答できる
# :successと:dangerという2つの状態を持つflashという名前のハッシュ
flash = {success: "It worked.", dsanger: "It failed."}
flash.each do |key, value|
puts "Key #{key.inspect} has value #{value.inspect}"
end

# inspectメソッド→ オブジェクトを人間が読める形式に変換した文字列を返す。
[1, 2, 3, 4,'five'].inspect # => "[1, 2, 3..4, \"five\"]"
Time.new.inspec # => "2022-08-14 20:37:15.697029 +0900"