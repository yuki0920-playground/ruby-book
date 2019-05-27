# curlコマンドはサーバーと通信するためのコマンド
# curl http://zipcloud.ibsnet.co.jp/api/search?zipcode=7830060

# サーバーに対して繰り返しアクセスするためのライブラリ
require 'net/http'
# URIを扱うためのライブラリ
require 'uri'
# JSONを扱うためのライブラリ
require 'json'

def search_address(post_code)
  # JSONを取得
  res = Net::HTTP.get(URI.parse("http://zipcloud.ibsnet.co.jp/api/search?zipcode=#{post_code}"))

  # JSON.pars文字列を JSON として解析しhashとして変換
  hash = JSON.parse(res)

 # 有効な郵便番号の判別
 if hash['results']
   # valuesで全要素取り出し,takeで前から3要素を指定,joinで結合
   return hash['results'][0].values.take(3).join("")
 else
   return "入力された値は無効です"
 end
end

# 変数を入力させる
print '検索する郵便番号を入力してください（ハイフン無し）:'
post_code = gets.chomp

# 結果を表示
puts search_address(post_code)
