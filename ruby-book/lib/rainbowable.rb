module Rainbowable
    def rainbow
        # 1. to_sメソッドを使って自分自身の文字列表現を取得
        # str = self.to_s

        # 空の配列を用意して他の配列をループ処理した結果を他の配列に詰め込む
        colored_chars = []

        # 2. 取得した文字列を1文字ずつループ処理をする
       to_s.each_char.map.with_index do |char, count|
        # 文字色は31から36まで順に切り替え、最後まで進んだら31まで戻る
        color = 31 + count % 6
            # 3. 各文字の手前にANSIエスケープシーケンスを付与する（さらに、その文字を配列に追加する）
           "\e[#{color}m#{char}"
        end.join + "\e[0em"
    end
end
