class User 
    # # @nameを読み書きするメソッドが自動的に定義される
    # attr_accessor :name
    # # 読み取り専用のメソッドだけ定義
    # attr_reader :name
    # 書き込み用のメソッドだけ定義
    attr_writer :name
     # インスタンスメソッドの定義
    def initialize(name)
        # インスタンス作成時に渡される名前をインスタンス変数に保存する
        @name = name
    end
end
user = User.new('Alice')
# # @nameの参照はできる
# p user.name
# @nameは変更できる
user.name = 'Bob'
# @nameの参照はできない
p user.name
