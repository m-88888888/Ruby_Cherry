a = [1,2,3]

a.delete(100)
# nil

a.delete(100) do
    p 'NG'
end
# 'NG

a.delete 100 do
    p 'NG'
end
# 'NG'

# a.delete 100 { p 'NG' }
#=> syntax error, unexpected '{', expecting end-of-input

a.delete(100) { p 'NG'}
# 'NG'

# 引数付きのメソッド呼び出しで{}をブロックとして使う場合は、メソッド引数の（）を省略できない