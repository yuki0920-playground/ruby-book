UNITS = {m: 1.0, ft: 3.28, in: 39.37}

def convert_length(length, form, to)
  (length / UNITS[form] * UNITS[to]).round(2)
end
