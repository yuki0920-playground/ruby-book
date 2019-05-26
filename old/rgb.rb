# hexとは16進数のこと

# vol.1
# def to_hex(r,g,b)
#   '#' +
#   r.to_s(16).rjust(2,'0')+
#   g.to_s(16).rjust(2,'0')+
#   b.to_s(16).rjust(2,'0')
# end

# vol.2
# def to_hex(r,g,b)
#   hex = "#"
#   [r, g, b].each do |n|
#     hex += n.to_s(16).rjust(2,'0')
#   end
#   hex
# end

# vol.3
def to_hex(r,g,b)
  # '#'は初期値,hexは初期変数
  [r,g,b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2,'0')
  end
end

# vol.1
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   ints = []
#   [r, g, b].each do |s|
#     ints << s.hex
#   end
#   ints
# end

# vol.2
def to_ints(hex)
  # r,g,b =hex[1..2],hex[3..4],hex[5..6] と同じ
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  # [r, g, b].map{|s| s.hex } と同じ
  [r, g, b].map do |s|
    s.hex
  end
end
