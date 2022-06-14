# module M
# end
# class C < Object
#   include M
# end
# class S < C
# end

# obj = S.new
# p obj.is_a?(S)       # true
# p obj.is_a?(C)       # true
# p obj.is_a?(Object)  # true
# p obj.is_a?(M)       # true
# p obj.is_a?(Hash)    # false

# class サブクラス < すーパークラス
# end
# DVDクラスに、再生時間(running_time)を持つように追加
class DVD < Product
    # nameとpriceはスーパークラスでattr_readerが設定されているので定義不要
    # attr_reader :name, :price
    attr_reader :running_time

    def initialize(name, price, running_time)
        # # スーパークラスにも存在している属性
        # @name = name
        # @price = price
        # # DVDクラス独自の属性
        # @running_time = running_time
        # superクラスのinitialメソッドを呼び出す
        super(name, price)
        @running_time = running_time
    end
end

dvd = DVD.new('A great movie', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time