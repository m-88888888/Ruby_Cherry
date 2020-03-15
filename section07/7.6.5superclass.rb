class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  # attr_reader :running_time

  # def initialize(name, price, running_time)
  # def initialize(name, price)
    # @name = name
    # @price = price

    # super(name, price)

    # super
    # @running_time = running_time
  # end
end

# dvd = DVD.new('A great movie', 1000, 120)
dvd = DVD.new('A great movie', 1000)
p dvd.name
p dvd.price
# p dvd.running_time

# superでスーパークラスのメソッドを呼び出す