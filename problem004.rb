# frozen_string_literal: true
# Число-палиндром с обеих сторон (справа налево и слева направо) читается одинаково. Самое большое число-палиндром, полученное умножением двух двузначных чисел – 9009 = 91 × 99.
#
# Найдите самый большой палиндром, полученный умножением двух трёхзначных чисел.

def calculate
  member = 100
  max = 0
  while member < 1000
    for i in member..999
      result = member * i
      max = result if polyndrom?(result) && result > max
    end
    member += 1
  end
  puts max
end

def polyndrom?(number)
  str = number.to_s.split('')
  for i in 0..(str.length / 2)
    return false unless str.first == str.last
    str.shift
    str.pop
  end
  true
end

calculate

# Answer = 906609
