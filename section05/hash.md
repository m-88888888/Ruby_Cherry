# ハッシュとは
キーと値の組み合わせでデータを管理するオブジェクトのこと。
他の言語では`ディクショナリ`、`マップ`と呼ばれる場合がある。

```ruby
# 空のハッシュの作成
{}

# サンプル
{ キー１ => 値１, キー２　=> 値２, キー３ => 値３ }

irb(main):021:0> { 'japan' => 'yen', 'us' => 'dollar' }
# => {"japan"=>"yen", "us"=>"dollar"}
```

ハッシュリテラルの{}とブロックで使う{}は同じ記号だから、慣れるまでは見分けがつきにくい

```ruby
# Hash
h = { 'japan' => 'yen', 'us' => 'dollar' }
# Block
[1,2,3].each { |n| puts n }
```

`シンボル: 値`の記法を使うと、ハッシュが簡潔に書ける（=>や''で囲む必要がない）

```ruby
{ japan: 'yen', us: 'dollar' }
# => {:japan=>"yen", :us=>"dollar"}

# キーと値の両方にハッシュを使うこともできる
{ japan: :yen, us: :dollar, india: :rupee }
# => {:japan=>:yen, :us=>:dollar, :india=>:rupee}
```