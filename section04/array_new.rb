# a = []と同じ
a = Array.new
# => []

a = Array.new(5)
# => [nil,nil,nil,nil,nil]

a = Array.new(5,0)
# => [0, 0, 0, 0, 0]

# ブロックを使った初期化も可能。ブロックの戻り値が初期値として設定される
a = Array.new(10) { |n| n % 3 + 1 }
# => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

# 配列に第２引数を使って初期化する場合の注意事項
a = Array.new(5, 'default')
# => ["default", "default", "default", "default", "default"]

str = a[0]
str.upcase!
# => "DEFAULT"
puts a
# => ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]

# １番目の要素だけを大文字にしたはずなのに、すべての要素が変更してしまっている
# これは初期化の際、１つの'default'オブジェクトに紐づいているから。
# なので異なるオブジェクトとして、初期化したい場合はブロックの戻り値として使う必要がある
a = Array.new(5) { 'default' }
# => ["default", "default", "default", "default", "default"]

str = a[0]
# => "default"

str.upcase!
# => "DEFAULT"

puts a
# => ["DEFAULT", "default", "default", "default", "default"]