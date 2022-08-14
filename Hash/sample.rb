# ハッシュとシンボル
# ハッシュは本質的には配列と同じだが、インデックスとして整数値以外のものも使える点が配列と異なる。

user = {} #{}は空のハッシュ
user["first_name"] = "Michael" # キーが"first_name" で値が"Michael"
user["last_name"] = "Hartl"  # キーが "last_name" で値が "Hartl"
p user["first_name"]  # 要素へのアクセスは配列の場合と似ている
p user # ハッシュのリテラル表記

# ハッシュのキーとしてシンボルを採用する場合、user のハッシュは次のように定義できる
user = {:name => "Micheal Hartl", :email => "micheal@example.com" }
user[:name]
user[:email]
user[:password]

# シンボルは文字列と似ているが、クォートで囲む代わりにコロンが前に置かれている点が異なる。例えば:nameはシンボルです。もちろん、余計なことを一切考えずに、シンボルを単なる文字列とみなしても構わない。
# ただし文字列と違って、全ての文字が使えるわけではないことに注意
# "name".split('')
# :name.split('')

# "foobar".reverse
# :foobar.reverse

# また、以下のようにRuby 1.9からこのような特殊な場合のための新しい記法がサポートされている
h1 = {:name => "Micheal Hartl", :email => "micheal@example,com"}
h2 = {name: "Michael Hartl", email: "michael@example.com" }
h1 == h2

