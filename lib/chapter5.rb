puts 'ハッシュ========================'

currencies = {'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
p currencies

# 要素の追加、変更、取得
currencies = {'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
currencies['italy'] = 'euro'
p currencies

currencies = {'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
currencies['japan'] = '円'
p currencies

currencies = {'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
p currencies['india']

# 繰り返し処理
currencies = {'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
currencies.each do |key, value|
 puts "#{key}：#{value}"
end

currencies = {'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key}：#{value}"
 end

puts 'シンボル========================'
currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
p currencies[:japan]

puts '続ハッシュ========================'
# ハッシュのキーにシンボルを使う
currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
currencies[:italy] = 'euro'
p currencies

# 記法を変更
currencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
p currencies

# キーや値のデータ型

person = {
  name: 'Alice',
  age: 20,
  friends: ['Bob', 'Carol'],
  phones: {home: '1234-0000', mobile: '5678-0000'}
}
p person[:age]
p person[:friends]
p person[:friends][0]
p person[:phones][:home]

# キーや値に異なるデータ型
