# class User
#     attr_accessor :name

#     def initialize(name)
#         @name = name
#     end

#     def rename_to_bob
#         # メソッド内でセッターメソッドを呼び出すには、必ずselfをつける
#         self.name = 'Bob'
#     end

#     def rename_to_carol
#         #self付きでnameメソッドを呼ぶ
#        self.name= 'Carol'
#     end

#     def rename_to_dave
#         # 直接インスタンス変数の@nameにアクセスする
#         @name = 'Dave'
#     end
# end
# user = User.new('Alice')
# user.rename_to_bob
# p user.name

# user.rename_to_carol
# p user.name 

# user.rename_to_dave
# p user.name

# class Foo
#     # 注：このputsクラス定義の読み込み時に呼び出される
#     puts "クラス構文の直下のself: #{self}"

#     def self.bar
#         p "クラスメソッド内のself: #{self}"
#     end

#     def baz 
#         puts "インスタンスメソッド内のself:#{self}"
#     end
# end
# # => クラス構文の直下のself:Foo 

# Foo.bar #=> クラスメソッド内の self:Foo 

# foo = Foo.new
# p foo.baz

class Foo
    #この時点ではクラスメソッドbarが定義されていないので呼び出せない
    #(NoMethodErrorが発生する)
    # self.bar

    def self.bar
        puts 'Hello'
    end

    # クラス構文の直下でクラスメソッドを呼び出す
    #(クラスメソッドbarが定義された後なので呼び出せる)
    self.bar
end
