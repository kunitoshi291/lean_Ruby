# それぞれの車のスペックを自動車の型式別に出力
# パターンマッチを使わないやり方
# cars = [
#     {name: 'The Beatle', engine: '105ps'},
#     {name: 'Prius', engine: '98ps', motor: '72ps'},
#     {name: 'Tesla', motor: '30ps'}
# ]
# cars. each do |car|
#     if car.key?(:engine) && car.key?(:motor)
#         puts "Hybrid: #{car[:name]} / engine: #{car[:engine]} / motor #{car[:motor]}"
#     elsif car.key?{:engine}
#         puts  "Gasoline: #{car[:name]} / engine: #{car[:engine]}"
#     elsif car.key?{:motor} 
#         puts "EV: #{car[:name]} / motor: #{car[:motor]} "
#     end
# end

# パターンマッチを使ったやり方
cars = [
    {name: 'The Beatle', engine: '105ps'},
    {name: 'Prius', engine: '98ps', motor: '72ps'},
    {name: 'Tesla', motor: '30ps'}
]
cars.each do |car|
    case car
        in {name:, engine:, motor:}
         puts "Hybrid: #{name} / engine: #{engine} / motor: #{motor}" 
        in {name: , engine:}
         puts "gasoline: #{name} / engine: #{engine}" 
        in {name: , motor:}
         puts "EV: #{name} / motor #{motor}" 
    end
end

