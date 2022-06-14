# # ログ出力用のメソッドを提供するモジュール
# # 「ログ出力ができる（log + able）」という意味でLoggableという名前をつけた
# module  Loggabel
#     def log(text)
#         puts "[LOG] #{text}"
#     end
# end

# class Product
#     # 上で作ったモジュールをincludeする
#     include Loggabel

#     def title
#         # LogメソッドはLoggableモジュールで定義したメソッド
#         log 'title is called.'
#         'A great movie'
#     end
# end

# class User
#     # こちらも同じくincludeする
#     include Loggabel

#     def name
#         # Loggableモジュールのメソッドが使える
#         log 'name is called.'
#         'Alice'
#     end
# end

# product = Product.new
# p product.title

# user = User.new
# p user.name

module Taggable 
    def price_tag
        # あえてselfをつけて呼び出してもよい
        "#{self.price}円"
    end
end

class Product
    include Taggable

    def price
        1000
    end
end

product = Product.new
p product.price_tag
