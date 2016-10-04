# Каждый следующий элемент ряда Фибоначчи получается при сложении двух предыдущих. Начиная с 1 и 2, первые 10 элементов будут:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# Найдите сумму всех четных элементов ряда Фибоначчи, которые не превышают четыре миллиона.
sum = 0
previous = 1
current = 2
sum = current
loop do
  member = previous + current
  puts member
  sum +=member if member.even?
  break if member >= 4000000
  previous = current
  current = member
end

puts "Sum = #{sum}"


#Answer = 4613732
