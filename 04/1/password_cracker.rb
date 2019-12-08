def password_valid?(password)
  digits = password.digits

  digits.reverse.each_cons(2).to_a.all?{ |pair| pair.first <= pair.last } && digits.each_cons(2).any? { |pair| pair.first == pair.last }
end

def get_passwords(range_start, range_end)
  (range_start..range_end).select(&method(:password_valid?))
end

start, range_end = IO.read('../input.txt').split('-').map &:to_i

passwords = get_passwords(start, range_end)
puts passwords.count
