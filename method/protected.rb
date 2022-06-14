class  User
    # weightは外部に公開しない
    attr_reader :naem

    def initialize(name, weight)
        @name = name
        @weight = weight
        
        # 自分がother_userより重い場合はtrue
        def heavier_than?(other_user) 
            other_user.weight < @weight
        end
    end
        protected

        # protectedメソッドなので同じサブクラスであればレシーバ付きで呼び出せる
        def weight
            @weight
        end
end
    alice = User.new('Alice', 50)
    bob = User.new('Bob', 65)
# 同じクラスのインスタンスメソッド内であればweightで呼び出せる
p alice.heavier_than?(bob)
p bob.heavier_than?(alice)
# クラスの外ではweightは呼び出せない
alice.weight
