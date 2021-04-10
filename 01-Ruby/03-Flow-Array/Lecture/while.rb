def sum_with_while(min, max)
  return -1 if min > max

  result = min
  number = min + 1

  while number <= max
    result = result + number
    number += 1
  end

  return result
end


puts sum_with_while(2, 4)

# result = 2 , number = 3  (true) ,
# 1er tour
# result = 2+3 = 5, number = 3 + 1 =4
# 2e tour
# result = 5 + 4 = 9, number = 4 + 1 = 5
# 3e tour
# sortie du while => return result
