require_relative "./add"
require_relative "./subtract"

def add3(a, b, c)
  add(add(a, b), c)
end

def subtract3(a, b, c)
  subtract(subtract(a, b), c)
end
