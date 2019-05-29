puts '配列詳しく========================'

# 要素の取得
a = [1, 2, 3, 4, 5]
p a[1, 3]

a = [1, 2, 3, 4, 5]
p a.values_at(1, 3)

a = [1, 2, 3, 4, 5]
p a[a.size - 1]
p a[-1]
p a[-2]

# 要素の変更
a = []
a.push(1)
a.push(2, 3)
p a

# splat展開前
a = []
b = [2, 3]
a.push(1)
p a.push(b)

# splat展開後
a = []
b = [2, 3]
a.push(1)
p a.push(*b)

# 文字列を分解
p 'Ruby'
p 'Ruby'.chars
p 'Ruby,Java,Perl,Python'.split(',')

puts 'ブロック詳しく========================'

# 添字
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruit, i| puts "#{i}:#{fruit}"}
p fruits.map.with_index{ |fruit, i| "#{i}:#{fruit}" }

# 配列とブロック引数
dimentions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
areas = []
dimentions.each do |dimention|
  length = dimention[0]
  width = dimention[1]
  areas << length * width
end
p areas

# 配列とブロック引数2個
dimentions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
areas = []
dimentions.each do |length, width|
  areas << length * width
end
p areas

puts 'さまざまな繰り返し処理========================'

# n回繰り返すtimesメソッド
sum = 0
5.times { |n| sum += n}
p sum

# uptoメソッドとdowntoメソッド
a = []
10.upto(14) { |n| a << n }
p a

a = []
14.downto(10) { |n| a.push(n)}
p a

# stepメソッド
a = []
1.step(10, 2) { |n| a << n}
p a

# whileとuntil
a = []
while a.size < 5
  a << 1
end
p a

a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
p a

# for
numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
p sum
