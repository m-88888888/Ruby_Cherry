module NameChanger
  def change_name
    @name = 'ありす'
  end
end

class User
  include NameChanger

  attr_reader :hoge

  def initialize(hoge)
    @hoge = hoge
  end
end

user = User.new('alice')
p user.hoge

user.change_name
p user.hoge