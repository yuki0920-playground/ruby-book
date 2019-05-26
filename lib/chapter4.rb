puts '配列========================'
p [].class

a = [1, 2, 3]
p a

# 要素の取得
p a[0]
p a[1]
p a[2]

# nilになる
p a[100]

# 要素の変更
a[1] = 20
p a

# 要素の変更
a[4] = 50
p a

a << 60
p a

# 要素の削除
a.delete_at(1)
p a

# 多重代入
a, b = 1, 2
p a
p b

# 配列を使った多重代入
a, b = [1, 2]
p a
p b

# divmodの使い方
p 14.divmod(3)

# 戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
p "商=#{quo_rem[0]},余り=#{quo_rem[1]}"

# 戻り値を多重代入で受け取る
quotient,remainder = 14.divmod(3)
p "商=#{quotient},余り=#{remainder}"

p "ブロック============"

# 基本的な配列
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
p sum

# ブロック引数
a = [1, 2, 3, 1, 2, 3]
a.delete(2)
p a

# ブロック引数
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
  n.odd?
end
p a

#  条件分岐
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum

# do end
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n| sum += n end
p sum

# {}
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
p sum

# map/collect使わない
numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
p new_numbers

# map/collect使う
numbers = [1, 2, 3, 4, 5]
new_numbers =  numbers.map { |n| n * 10 }
p new_numbers

# select
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select { |n| n.even? }
p even_numbers

# reject
numbers = [1, 2, 3, 4, 5]
non_multiple_of_three = numbers.reject { |n| n % 3 == 0}
p non_multiple_of_three

# find
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.find { |n| n.even? }
p even_numbers

# inject
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
p sum

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n}
p sum

# (&:)
p ['ruby', 'java', 'perl'].map { |n| n.upcase }
p ['ruby', 'java', 'perl'].map(&:upcase)

p [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
p [1, 2, 3, 4, 5, 6].select(&:odd?)

p '範囲============'

# クラスの確認
p (1..5).class
p (1...5).class

# 挙動
p (1..5).include?(1)

# 抜き出す
a = [1, 2, 3, 4, 5]
p a[1..3]
a = 'abcdef'
p a[1..3]

# n以上m以下の判定メソッド
def liquid?(temparature)
  0 <= temparature && temparature < 100
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

def liquid?(temparature)
  (0...100).include?(temparature)
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

# case
def charge(age)
  case age
  when  0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end
p charge(3)
p charge(12)
p charge(16)
p charge(25)

# 範囲オブジェクトから配列を作成する
p (1..5).to_a
p ('a'..'e').to_a

# 繰り返し処理
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n}
p sum

sum = 0
(1..4).each { |n| sum += n }
p sum

numbers = []
(1..10).step(2) { |n| numbers << n}
p numbers
