# Простые делители числа 13195 - это 5, 7, 13 и 29.
#
# Каков самый большой делитель числа 600851475143, являющийся простым числом?


current_member = 13195
curent_divider = 2
loop do
  break if curent_divider > current_member
  if current_member%curent_divider == 0
    current_member/=curent_divider
    puts current_member
  else
    curent_divider+=1
  end
end

#Answer = 6857
