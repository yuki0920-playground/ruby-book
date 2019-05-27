# open-uri WEBページの情報を取得できる
# ruby -ropen-uri -e 'open("http://www.ruby-lang.org/ja/").read.display'

require 'net/http'
# バージョン指定
Net::HTTP.version_1_2

# HTTPセッション開始
Net::HTTP.start('www.ruby-lang.org', 80) { |http|
# Web サーバの path にあるエンティティ (実体) を 取得
response = http.get('/ja/')
# 出力
puts response.body
}
