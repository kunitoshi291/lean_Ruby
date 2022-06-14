# unless修飾子・・・if と反対で、条件式が偽の時に then 以下の式を評価します。unless 式にelsif を指定することはできない

# n = 1
# if !n.zero?
#     puts 'Not Zero.'
# end

n = 0
unless  n.zero?
    puts 'Not Zero.'
else 
    puts 'This is zero.'
end

