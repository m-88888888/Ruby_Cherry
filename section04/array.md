## 配列
- 配列の要素数は宣言時に定める必要がない。Javaでいうところのリストのようなもの？
- 配列の多重代入を使えば、配列として受け取らずに最初から別々の変数として受け取ることができる。

```ruby
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
    sum += n
end
puts sum
```
eachメソッドの特徴・・・`言語機能としての繰り返し処理`ではなく、`配列のeachメソッドとしての繰り返し`であること

## ブロックを使う配列のメソッド

### map/collect
配列の各要素をブロックで評価した結果を配列として返すメソッド。
```ruby
irb(main):008:0> numbers = [1,2,3,4,5]
=> [1, 2, 3, 4, 5]
irb(main):009:0> new_numbers = numbers.map { |n| n * 10 }
=> [10, 20, 30, 40, 50] #各要素を10倍にして返す
```

### select/find_all/reject
配列の各要素をブロックで評価し、戻り値が真である配列を返すメソッド
```ruby
irb(main):012:0> numbers = [1,2,3,4,5,6]
=> [1, 2, 3, 4, 5, 6]
irb(main):013:0> even_numbers = numbers.select { |n| n.even? }
=> [2, 4, 6] #偶数を返す
```
rejectメソッドはselect/find_allメソッドの逆。戻り値が偽である配列を返すメソッド
```ruby
irb(main):014:0> numbers = [1,2,3,4,5,6]
=> [1, 2, 3, 4, 5, 6]
irb(main):015:0> non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
=> [1, 2, 4, 5] #3の倍数以外を返す
```

### find/detect
ブロックの戻り値が真になった最初の要素を返すメソッド
```ruby
irb(main):016:0> numbers = [1,2,3,4,5,6]
=> [1, 2, 3, 4, 5, 6]
irb(main):017:0> even_number = numbers.find { |n| n.even? }
=> 2 #配列の一番最初の偶数の要素を返す
```

### inject/reduce
たたみ込み演算を行うメソッド
次のような、配列の各要素を順に変数sumに加算するコードをinject/reduceメソッドで置き換えることができる
```ruby
irb(main):018:0> numbers = [1,2,3,4]
=> [1, 2, 3, 4]
irb(main):019:0> sum = 0
=> 0
irb(main):020:0> numbers.each { |n| sum += n }
=> [1, 2, 3, 4]
irb(main):021:0> sum
=> 10
```

```ruby
irb(main):022:0> numbers = [1,2,3,4]
=> [1, 2, 3, 4]
irb(main):023:0> sum = numbers.inject(0) { |result, n| result + n }
=> 10
```
つまり、inject/reduceメソッドの引数を初期値に、ブロックの戻り値（result + nの処理）を引き継ぐことができる
数値以外のオブジェクトにも適用可能

### &:メソッド名
この記法を使うと、ブロックを使うメソッドを簡潔に記述することできる

```ruby
irb(main):025:0> [1,2,3].select { |n| n.odd? } #このコードは
=> [1, 3]
irb(main):026:0> [1,2,3].select(&:odd?) #置き換えることができる
=> [1, 3]
```

この書き方が使える条件
①ブロック引数が１つであること
②ブロックの中で呼び出すメソッドに引数がないこと
③ブロックの中でブロック引数に対して、メソッドを1回呼び出す以外の処理がないこと

つまり、&の役割はProcオブジェクトをブロックと認識させること？
詳細はまた10.5.2を見ること