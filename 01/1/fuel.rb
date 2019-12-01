result = IO.foreach('../input.txt')
             .map(&:to_i)
             .map { |value| (value / 3) - 2 }
             .reduce 0, &:+
puts result