class Foo
  puts "クラス構文直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
    self.bar
  end

end

Foo.bar

foo = Foo.new
foo.baz