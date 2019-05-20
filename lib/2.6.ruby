# 2.6.1
def add(a,b)
  return a + b
end

puts add(1,2)


def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end

puts greeting('japan')
puts greeting('us')
