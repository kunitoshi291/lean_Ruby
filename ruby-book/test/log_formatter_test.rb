require 'minitest/autorun'
require_relative '../lib/log_formatter'

class LogFormatterTest < Minitest::Test
    def test_format_log
        # format_logのメソッドの戻り値を受け取り、それを行毎に分割して配列に変換し、最初の要素に期待した文字列が入っていることを確認するテストコード
        text = LogFormatter.format_log
        # puts text
        # chomp:trueを付けると改行文字が削除される
        lines = text.lines(chomp: true) 
        assert_equal '[OK] request_id=1, path=/products/1', lines[0]  
        assert_equal '[ERROR] request_id=2, path=/wp-login.php, status=404, error=Not found', lines[1]
        assert_equal '[WARN] request_id=3, path=/products, duration=1023.8', lines[2]
        assert_equal '[ERROR] request_id=4, path=/dangerous, status=500, error=Internal server error', lines[3]
    end 
end