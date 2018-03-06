squared_sum = 0
sum_squared = (((100 ** 2) + 100) / 2) ** 2
squared_sum = (1..100).map{ |num| num ** 2}.inject(&:+)
puts sum_squared - squared_sum
