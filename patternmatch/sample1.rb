# 2021年1月1日、2019年5月1日、2017年11月25日の3つのDateオブジェクトを含む配列を返す処理

require 'date'

records = [
    [2021],
    [2019,5],
    [2017, 11, 25]
]

records.map do |record|
    case record.size
    when 1
        # 年を指定、月と日は1固定
        Date.new(record[0], 1, 1)
    when 2
        # 年月を指定、日は1固定
        Date.new(record[0], record[1],1)
    when 3
        # 年月日を指定
        Date.new(record[0], record[1], record[2])
    end
end

# パターンマッチでの書き方
records.map do |record|
    case record
        in [y]
         Date.new(y, 1, 1)
        in [y, m]
         Date.new(y, m, 1)
        in [y, m, d] 
        Date.new(y,m,d)
    end
end