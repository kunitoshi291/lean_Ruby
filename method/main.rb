# class Product
#     def to_s
#         # nameは常に'A greeat movie”になるとは限らない
#         "name: #{name}"
#     end
#         private 
#         def name
#             'Agreat movie'
#     end
# end

# class DVD < Product
#    private
#    # スーパークラスのprivateメソッドをオーバーライドする
#    def name
#     'An awesome film'
#    end
# end

# product = Product.new
# # Productクラスのnameメソッドが使われる
# p product.to_s

# dvd = DVD.new
# # 内部でスーパークラスのprivateメソッドを呼んでいるがエラーにはならない
# p dvd.to_s

# class User 
#     private
#     # クラスメソッドもprivateになる？
#     def self.hello
#         'Hello!'
#     end
# end
# # クラスメソッドはprivateメソッドにならない！
# p User.hello

# クラスメソッドをprivateにしたい場合、class << selfにする
# class User
#     class << self
#         # class << self の構文なら、クラスメソッドでもprivateが機能する
#         private

#         def hello
#             'Hello'
#         end
#     end
# end
# p User.hello

# class << を使わない場合、private_methodでクラスの定義後に可視性を変更できる
# class User
#     def self.hello
#         'Hello'
#     end
#     # 後からクラスメソッドをprivateに変更する
#     private_class_method :hello
# end
# p User.hello

# メソッドの可視性を変えるあれこれ
# class User
#     # いったんpublicメソッドとして定義する
#     def foo
#         'foo'
#     end
#     def bar
#         'bar'
#     end
#     # fooとbarをprivateメソッドに変更する
#      private :foo, :bar

#      # bazはpublicメソッド
#      def baz 
#         'baz'
#      end
#     end

#     user = User.new
#      user.foo
#      user.bar
#      user.baz

class User
    attr_accessor :name
    # ゲッターメソッドとセッターメソッドをそれぞれprivateメソッドにする
    private :name, :name= 

    def initialize(name)
        @name = name
    end
end

user = User.new('Alice')
p user.name
p user.name
