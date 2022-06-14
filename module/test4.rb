module Loggable
    
end

class Product
    include Loggable

end

product = Product.new
# 引数が自クラス、includeしているモジュール、スーパークラスのいずれかに該当すればtrue
p product.is_a?(Product)
p product.is_a?(Loggable)
puts Product.is_a?(Object)def