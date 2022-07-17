def factorial(n)
    # 終了条件を書き忘れたため、永遠に再帰呼び出しが発生する
    n * factorial(n-1)

    # 本来であれば次のような条件分岐を使って終了させる必要がある
    # n == 0 ? 1 : n * factorial(n-1)
end

factorial(5)
