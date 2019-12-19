def greeting(*name)
    puts "#{name.join('と')}、こんにちは！"
end

greeting('田中さん')
greeting('田中さん','鈴木さん')
greeting('田中さん','鈴木さん','佐藤さん')

# メソッドの引数に「*」をつけると、引数の個数に制限がなくなる。
# そのようなメソッドのことを「可変長引数」という