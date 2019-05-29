# curl http://www.ekidata.jp/api/s/1130224.json
require 'net/http'
require 'uri'
require 'json'

# def search_station(station_code)
    res = Net::HTTP.get(URI.parse("http://www.ekidata.jp/api/s/1130224.json"))
    hash = JSON.parse(res)
# end

# print '検索する駅コードを入力してください（例：1130224）:'
# station_code = gets.chomp

# puts search_station(station_code)
puts hash["station"][0]["station_name"]
