## 範囲/Range
範囲オブジェクトは`..`または`...`を使って作成する

```ruby
最初の値..最後の値（最後の値を含む)
最初の値...最後の値（最後の値を含まない)
```

```ruby
# ..の場合
irb(main):027:0> range = 1..5
=> 1..5
irb(main):028:0> range.include?(0)
=> false
irb(main):029:0> range.include?(1)
=> true
irb(main):030:0> range.include?(4.9)
=> true
irb(main):031:0> range.include?(5)
=> true
irb(main):032:0> range.include?(6)
=> false
```

```ruby
# ...の場合
irb(main):033:0> range = 1...5
=> 1...5
irb(main):034:0> range.include?(0)
=> false
irb(main):035:0> range.include?(1)
=> true
irb(main):036:0> range.include?(4.9)
=> true
irb(main):037:0> range.include?(5)
=> false
```

範囲オブジェクトを変数に入れずに直接メソッドを呼び出す場合は（）で囲む必要がある

```ruby
irb(main):038:0> 1..5.include?(1)
=> NoMethodError (undefined method `include?' for 5:Integer)
irb(main):039:0> (1..5).include?(1)
=> true
```

範囲オブジェクトを使うと便利な場面

#### 配列や文字列の一部を抜き出す
配列に範囲オブジェクトを渡すと、指定した範囲の要素を取得する
```ruby
irb(main):001:0> a =[1,2,3,4,5]
=> [1, 2, 3, 4, 5]
irb(main):002:0> a[1..3]
=> [2, 3, 4]
```

#### ｎ以上ｍ以下、ｎ以上ｍ未満の判定をする
範囲オブジェクト使うとシンプルにできる
```ruby
def liquid?(temperature)
    0 <= temperature && temperature < 100
end

def liquid_range?(temperature)
    (0...100).include?(temperature)
end
```

#### case文で使う

```ruby
def charge(age)
    case age

    when 0..5
        0
    when 6..12
        300
    when 13..18
        600
    else
        1000
    end
end
```

#### 値が連続する配列の作成

範囲オブジェクトに対してto_aメソッドを使えば、値が連続する配列を作成できる

[]と*を使っても同じような配列を作成できる
⇒*を使って複数の値を配列に展開することを`splat展開`という

```ruby
irb(main):004:0> (1..5).to_a
=> [1, 2, 3, 4, 5]
irb(main):005:0> [*1..5]
=> [1, 2, 3, 4, 5]
```

#### 繰り返し処理を行う
範囲オブジェクトは配列に変換して繰り返し処理をしなくても、直接繰り返し処理することができる。

```ruby
irb(main):001:0> numbers = (1..4).to_a
=> [1, 2, 3, 4]
irb(main):002:0> sum = 0
=> 0
irb(main):003:0> numbers.each { |n| sum += n }
=> [1, 2, 3, 4]
irb(main):004:0> sum
=> 10
```

```ruby
irb(main):005:0> sum = 0
=> 0
irb(main):006:0> (1..4).each { |n| sum += n }
=> 1..4
irb(main):007:0> sum
=> 10
```

stepメソッドを使うと値を増やす間隔を指定できる
```ruby
irb(main):008:0> numbers = []
=> []
irb(main):009:0> (1..10).step(2) { |n| numbers << n }
=> 1..10
irb(main):010:0> numbers
=> [1, 3, 5, 7, 9]
```