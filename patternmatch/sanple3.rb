# 11.3 パターンマッチの利用パターン
# 11.3.1 valueパターン
country = 'italy'
message = 
    case country
    in 'japan'
     'こんにちは'
    in 'us'
     'Hello'
    in 'italy'
     'Ciao'
    end

case country
    in 'japan' then 'こんにちは'
    in 'us' then 'Hello'
    in 'italy' then 'Ciao'
end
