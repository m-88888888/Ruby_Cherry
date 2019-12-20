dimensions = [
    [10,20],
    [30,40],
    [50,60],
]

areas = []

# ブロック引数に渡す引数が1つの場合
# dimensions.each do |dimension|
#     length = dimension[0]
#     width = dimension[1]
#     areas << length * width
# end

# 引数を配列の要素分だけ用意すれば、各要素の値が別々の変数に格納される
dimensions.each do |length, width|
	areas << length * width
end

p areas
# => [200, 1200, 3000]

# with_indexを使った場合
dimensions.each_with_index do |length, width, i|
	p "length: #{length}, width: #{width}, i: #{i}"	
end
# "length: [10, 20], width: 0, i: "
# "length: [30, 40], width: 1, i: "
# "length: [50, 60], width: 2, i: "

# 最初のブロック引数lengthで配列を受け取ってしまっている。
# 一気にブロック引数を受け取るには、（）でブロック引数を囲んであげればいい
dimensions.each_with_index do |(length, width), i|
	p "length: #{length}, width: #{width}, i: #{i}"	
end
# "length: 10, width: 20, i: 0"
# "length: 30, width: 40, i: 1"
# "length: 50, width: 60, i: 2"
