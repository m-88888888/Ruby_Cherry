# 用語
- レシーバ・・・メソッドを呼び出された側のこと

```ruby
user = User.new('Alice', 'Ruby', 20)
user.first_name
```

上記のようなサンプルコードの場合、first_nameメソッドのレシーバはuserクラスと呼べる。

※プログラマ個人の好みによって文脈の中で使い分けられるから、一概に正解があるとは言えない？？

- 属性（アトリビュート、プロパティ）・・・オブジェクトから取得or設定できる値のこと

```ruby
class User
  # first_nameの値の読み書きを許可させる
  attr_accessor :first_name
end

user = User.new('Alice', 'Ruby', 20)
user.first_name #=> 'Alice'
user.first_name = 'アリス'
user.first_name #=> 'アリス'
```

- インスタンスメソッド・・・クラス内で定義したメソッド
- アクセサメソッド・・・クラスの外部からインスタンス変数にアクセスするためのメソッド

# アクセサメソッド

### attr_accessor 読み書き両用

```ruby
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
user.name = 'Bob'
#=> 'Bob'
```

### attr_reader 読み取り専用

```ruby
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')

user.name
# 読み取りは可能
#=> 'Alice'

user.name = 'Bob'
# 書き込みはエラー
#=> NoMethodError
```

### attr_writer 書き込み専用

```ruby
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
user.name = 'Bob'
# 書き込みは可能
#=> 'Bob'

user.name
# 読み込みはエラー
#=> NoMethodError
```

# クラスメソッド
インスタンス変数を使わないメソッドを定義したい時に使用するメソッド

定義方法

```ruby
# その１
class User
  def self.hello
    puts 'Hello!'
  end
end
```

```ruby
# その２
class User
  class << self
    def hello
      puts "Hello"
    end
  end
end
```

その２の方法で定義するケースは、複数のクラスメソッドを定義したいとき。

## 呼び出し方の違い

| メソッド       | 呼び出し方          |
| ---------- | -------------- |
| インスタンスメソッド | インスタンス変数.メソッド名 |
| クラスメソッド    | クラス. メソッド名     |