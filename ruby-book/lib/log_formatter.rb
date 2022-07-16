# プログラムの実行に必要なライブラリの読み込み
require 'net/http'
require 'uri'
require 'json'

module LogFormatter
    def self.format_log
        # Net::HTTP.getを使ってインターネット上のデータを取得する
        # ただし、URLを文字列のまま渡すことはできないので、URI.parseでURI::HTTPSオブジェクトに変換する
        uri = URI.parse('https://samples.jnito.com/access-log.json')
        json = Net::HTTP.get(uri)

        # 取得したJSON文字列をパースしてRubyのオブジェクト（ハッシュを要素とする配列）に変換する
        # ハッシュのキーは文字列がデフォルトだがsymboles_names: trueオプションを付けるとシンボルになる
        log_data = JSON.parse(json, symbolize_names: true)
        # mapメソッドで各行のデータを配列にし、最後にjoinメソッドで配列から1つの文字列に変換
        log_data.map do |log|
            case log
                in { request_id:, path:, status: 404 | 500 => status, error: }
                "[ERROR] request_id=#{request_id}, path=#{path}, status=#{status}, error=#{error}"
                
                in { request_id:, path:, duration:1000.. => duration }
                # asパターンで:durationの値を変数durationに代入する
                "[WARN] request_id=#{request_id}, path=#{path}, duration=#{duration}"

                # hashパターンで、:request_idと:pathに対応する値をローカル変数に代入し、それを文字列に埋め込む
                in {request_id:, path:}
                "[OK] request_id=#{request_id}, path=#{path}"
            end
        end.join("\n")
    end
end