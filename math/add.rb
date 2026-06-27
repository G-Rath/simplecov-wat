def add(a, b)
  a = a.to_i if a.is_a? String
  b = b.to_i if b.is_a? String

  raise ArgumentError unless a.is_a? Numeric
  raise ArgumentError unless b.is_a? Numeric

  a + b
end

def add3(a, b, c)
  add(a, add(b, c))
end
