class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # selfなしでnameメソッド呼ぶ
    p "Hello, I am #{name}."
  end

  def hi
    # selfつきでnameメソッド呼ぶ
    p "Hi, I am #{self.name}."
  end

  def my_name
    # 直接インスタンス変数の@nameにアクセスする
    p "My name is #{@name}."
  end

  def rename_to_bob
  name = 'Bob'
end

def rename_to_carol
  self.name = 'Carol'
end

def rename_to_dave
  @name = 'Dave'
end
end

p 'getterの場合'
user = User.new('Alice')
user.hello
user.hi
user.my_name

p 'setterの場合'
user.rename_to_bob
p user.name
user.rename_to_carol
p user.name
user.rename_to_dave
p user.name