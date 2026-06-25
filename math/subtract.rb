def subtract(a, b)
  a = a.to_i if a.is_a? String
  b = b.to_i if b.is_a? String

  raise ArgumentError unless a.is_a? Numeric
  raise ArgumentError unless b.is_a? Numeric

  a - b
end
