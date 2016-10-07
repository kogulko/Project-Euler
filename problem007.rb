# Выписав первые шесть простых чисел, получим 2, 3, 5, 7, 11 и 13. Очевидно, что 6-ое простое число - 13.
#
# Какое число является 10001-ым простым числом?


def simple?(number)
  return true if number == 2
  2.upto(number - 1) do |i|
    return false if  number%i == 0
  end
  return true
end

arr = []
num = 2


loop do
  arr << num if simple?(num)
  break if arr.size == 10001
  num += 1
end

puts "10001th simple number is: #{arr.last}"

#Answer is: 104743
