module  Loggable
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    extend Loggable

    # logメソッドをクラス構文の直下で呼び出す
    #(クラスが読み込まれるタイミングで、このlogメソッドも読み込まれる)
    log 'Defined Product class.'
end