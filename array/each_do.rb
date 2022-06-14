# numbers = [1,2,3,4]
# sum= 0
# numbers.each do |n|
#     sum += n
# end
# p sum

# a = [1,2,3]
# # 配列から値が2の要素を削除
# a.delete(2)
# p a

# a = [1,2,3,1,2,3]
# # 配列から値が奇数の要素を削除する
# a.delete_if do|n|
#     n.odd?
# end
# p a

sum = 0
numbers.each do |n|
    sum_value = n.even??n*10:n 
    sum += sum_value
end
p sum