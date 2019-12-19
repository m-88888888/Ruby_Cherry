# %wと!で文字列の配列作成
puts %w!apple melon orange!

# %wと()で文字列の配列作成
puts %w(apple melon orange)

# 空白文字でもOK
puts %w(
    apple
    melon
    orange
    )

# 値にスペースを含めるときはエスケープ処理
print %w(big\ apple small\ mellon orange)