a = [1]
b = [2,3]

puts a.concat(b) #=> [1,2,3]
puts a #=> [1,2,3]
puts b #=> [2,3]

# 配列aに連結した配列を格納するため、元の配列aは破壊される

puts a + b
# +演算子を使うと、元の配列を変更せずに新しい配列を作る

# 元のデータを破壊するような大きな変更はなるべく避けたほうが良い