# 改札機プログラム
umeda = Gate.new(:umeda)
juso = Gate.new(:juso)

# 160円の切符を購入して梅田で乗車し、三国で降車する（NG）
ticket = Ticket.new(160)
umeda.enter(ticket)
assert juso.exit(ticket)

#190円の切符を購入して梅田で乗車し、三国で降車する（OK）
ticket = Ticket.new(190)
umeda.enter(ticket)
mikuni.exit(ticket)