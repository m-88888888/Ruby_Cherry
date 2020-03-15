class User
  def hello
    p "Hello, I am #{self.name}."
  end

  private

    def name
      'Alice'
    end
end
user = User.new
user.hello