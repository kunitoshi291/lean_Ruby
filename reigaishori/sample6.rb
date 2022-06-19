require 'date'

def convert_reiwa_to_date(reiwa_text)
    m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
    year = m[:jp_year].to_i + 2018
    month = m[:month].to_i
    day = m[:day].to_i
    # 正しい日付の場合のみDateオブジェクトを作成する
    if Date.valid_date?(year, month, day)
        Date.new(year, month, day)
    end
end

puts convert_reiwa_to_date("令和3年12月31日")
puts convert_reiwa_to_date("令和3年99月99日")