# user = User.new
# # userはUserクラスのインスタンスか？
# user.instance_of?(String)

# 継承関係(is-a関係にあるかどうか)を含めて確認したい場合はis_a?メソッド(エイリアスメソッドはkind_of?)を使う
user = User.new

# instance_of?は引数で指定したクラスそのもののインスタンスでないとtrueにならない
user.instance_of?(Object)

#is_a?はis-a関係にあたればtrueになる
user.is_a?(User)
user.is_a?(Object)
user.is_a?(BasicObject)