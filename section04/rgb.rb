# def to_hex(r, g, b)
#     '#' +
#         r.to_s(16).rjust(2, '0') +
#         g.to_s(16).rjust(2, '0') +
#         b.to_s(16).rjust(2, '0')
# end

# リファクタリング
# .to_s(16).rjust(2, '0')を繰り返さないためにeachメソッドを使ってリファクタリング
# def to_hex(r, g, b)
#     hex = '#'
#     [r,g,b].each do |n|
#         hex += n.to_s(16).rjust(2, '0')
#     end
#     hex
# end

# injectを使ったリファクタリング
def to_hex(r,g,b)
    [r,g,b].inject('#') do |hex, n|
        hex + n.to_s(16).rjust(2, '0')
    end
end

# def to_ints(hex)
#     r = hex[1..2]
#     g = hex[3..4]
#     b = hex[5..6]
#     ints = []
#     [r,g,b].each do |s|
#         ints << s.hex
#     end
#     ints
# end

# mapを使ったリファクタリング
# def to_ints(hex)
#     r = hex[1..2]
#     g = hex[3..4]
#     b = hex[5..6]
#     [r,g,b].map { |s| s.hex}
# end

# 多重代入を使ったリファクタリング
# def to_ints(hex)
#     r,g,b = hex[1..2], hex[3..4], hex[5..6]
#     [r,g,b].map do |s|
#         s.hex
#     end
# end

# 正規表現とscanメソッドを使ったリファクタリング
# scanメソッド・・・正規表現にマッチした文字列を配列にして返す
# def to_ints(hex)
#     r,g,b = hex.scan(/\w\w/)
#     [r,g,b].map do |s|
#         s.hex
#     end
# end


# ブロックを使わないリファクタリング
def to_ints(hex)
    hex.scan(/\w\w/).map(&:hex)
end