# Сумма простых чисел меньше 10 - это 2 + 3 + 5 + 7 = 17.
#
# Найдите сумму всех простых чисел меньше двух миллионов.
#

def simple?(number)
  m = []
  2.upto(number - 1) do |i|
    next if m[i]
    j = 1
    while i + i * j < number
      m[i + i * j] = true
      j += 1
    end
  end
  m
end

m = simple?(2_000_000)
sum = 0
2.upto(1_999_999) do |i|
  sum += i unless m[i]
end
puts sum

#Answer = 142913828922
