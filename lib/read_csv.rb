require 'csv'

CSV.foreach('./lib/sample.csv', col_sep: "\t") do |row|
  puts "1: #{row[0]}, 2:#{row[1]}, 3:#{row[2]}"
end
