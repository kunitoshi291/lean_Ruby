def convert_hash_syntax(old_syntax)
    old_syntax.gsub(/:(\w+) *=>*/) do
        "#($1):"
     # 実行結果をいったん変数に入れてターミナルに出力
    actual = convert_hash_syntax(old_syntax) 
    p actual
    assert_equal expected, actual
        
end
   
end