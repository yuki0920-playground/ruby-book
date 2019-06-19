users = []
users << {first_name: 'Alice', last_name: 'Ruby', age: 20}
users << {first_name: 'Bob', last_name: 'Python', age: 30}

users.each do |user|
  puts "氏名:#{user[:first_name]} #{user[:last_name]} 年齢#{user[:age]}"
end

def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

users.each do |user|
  puts "氏名:#{full_name(user)} 年齢#{user[:age]}"
end

# クラスを作成する

class User
  attr_reader :first_name, :last_name, :age

  # クラス内部のメソッドはインスタンスメソッドにである.引数が必要になる
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end

  # attr_readerにより外部からの読み込みが可能に
  # def first_name
  #   @first_name
  # end
  # def last_name
  #   @last_name
  # end
  # def age
  #   @age
  # end

end

# newメソッドによりinitializeメソッドが呼ばれる.
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)


users.each do |user|
  puts "年齢#{user.age}"
end

class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A free movie')
puts product.price
