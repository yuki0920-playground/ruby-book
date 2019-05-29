require 'csv'

# 1行ごとに読み込む
CSV.foreach('./csv_practice/data.csv') do |row|
  p row
end

# ファイル全体を読み込む
data_list = CSV.read('./csv_practice/data.csv')
p data_list

CSV.open('test.csv', 'w') do |test|
  test << [1, 2, 3]
  test << [4, 5, 6]
end
