# 例外発生時の情報を残す架空のコード例
# 大量のユーザーにメールを送信する(例外が起きても最後まで続行する)
users. each do |user|
    begin
        # メールを送信する
        send_mail_to(user)
    rescue => exception
        # full_messageメソッドを使って例外のクラス名、エラーメッセージ、バックトレースをターミナルに出力
        # (ログファイルがあればしそこに出力するほうがベター)
        puts e.full_message
    end
        
end