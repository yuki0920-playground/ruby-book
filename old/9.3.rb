def country_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError, "無名な国名です#{country}"
  end
end

puts country_of(:japan)
puts country_of(:italy)
