require 'csv'

# 1行ずつ読み取る
# 1行は1つの配列として出力
CSV.foreach('./csv_practice/future_gadgets.csv') do |fg|
  puts "#{fg[0]} #{fg[1]} #{fg[2]}"
end

# 1行ずつ読み取る
# 1行は1つの配列として出力
future_gadgets = CSV.read('./csv_practice/future_gadgets.csv')
future_gadgets.each do |fg|
  puts "#{fg[0]} #{fg[1]} #{fg[2]}"
end

# 1行ずつ読み取る
# 行名をキーとして使えるようになる
# ヘッダーは出力されない
CSV.foreach('./csv_practice/future_gadgets.csv', headers: true) do |fg|
  puts "#{fg['number']} #{fg['name']}: #{fg['function']}"
end
