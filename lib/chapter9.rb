puts '例外処理========================'

# Rubyのパス/ エラーメッセージ　(エラークラス名)
# = >  lib/chapter9.rb:6:in `<main>': undefined method `new' for Greeter:Module (NoMethodError)

puts 'Start.'
module Greeter
  def hello
    'hello'
  end
end
begin
  greeter = Greeter.new
rescue
  puts '例外が発生したがこのまま続行する'
end

puts 'End.'

begin
  1 / 0
rescue => e
  puts "エラークラス：#{e.class}"
  puts "エラーメッセージ：#{e.message}"
  puts "バックトレース___"
  puts e.backtrace
  puts "____"
end

begin
  'abc'.foo
rescue ZeroDivisionError
  puts '0で除算しました'
rescue NoMethodError
  puts '存在しないメソッドが呼び出されました'
end

retry_count = 0
begin
  puts '処理を開始します。'
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts  "retryします。（#{retry_count}回目）"
    retry
  else
    puts "retryに失敗しました"
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError, "無効な国名です。#{country}"
  end
end
p currency_of(:japan)
p currency_of(:italy)
