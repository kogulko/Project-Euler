#Если выписать все натуральные числа меньше 10, кратные 3 или 5, то получим 3, 5, 6 и 9. Сумма этих чисел - 23.

#Найдите сумму всех чисел меньше 1000, кратных 3 или 5.

sum = 0
for i in 1..999
  sum+=i if i%3 == 0 || i%5 == 0
end

puts sum

#Answer = 233168
