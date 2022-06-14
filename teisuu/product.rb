class Product
    # デフォルトの価格を定数として定義
    DEFOULT_PRICE = 0
    attr_reader :name, :price
    # 第2引数priceのデフォルト値を定数DEFOULT_PRICE（つまり0）とする
    def initialize(name, price = DEFOULT_PRICE)
        @name = name
        @price = price
    end
end

product = Product.new('A free movie')
p product.price
