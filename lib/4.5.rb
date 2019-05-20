def liquid?(temparature)
  (0...100).include?(temparature)
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

puts charge(3)
puts charge(12)
puts charge(16)
puts charge(25)

numbers = (1..4).to_a
sum = 0
numbers.each{|n| sum += n }
puts sum

sum = 0
(1..4).each{ |n| sum += n}
puts sum
