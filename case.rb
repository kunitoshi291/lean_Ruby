# 誕生石から誕生月を出力するプログラムをifとcaseで書いてみよう
# ruby: July
# peridot: August
# sapphire: September
# それ以外: Not Found.

# if
# stone = 'sapphire'
# if stone == 'ruby'
#     puts 'July'
# elsif stone == 'peridot'
#     puts 'August'
# elsif stone == 'sapphire'
#     puts 'September'
# else 
#     puts 'Not Found'
# end

# case 
stone = "ruby"
case stone
when 'ruby'
    puts 'July'
when 'peridot'
    puts 'August'
when 'sapphire'
    puts 'September'
else 
    puts "Not Found"
end