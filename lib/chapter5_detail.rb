puts 'ハッシュ詳しく========================'

currencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
p currencies.keys
p currencies.values
p currencies.has_key?(:japan)
p currencies.has_key?(:italy)

# ハッシュから配列
currencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
p currencies.to_a
array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p array.to_h
