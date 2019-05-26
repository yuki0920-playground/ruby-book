require 'csv'

CSV.open('./lib/sample.csv', 'w') do |csv|
  csv << ['Name', 'alibe@example.com', 20]
end
