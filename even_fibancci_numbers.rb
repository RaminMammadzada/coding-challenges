def sum_even_fibonacci(number)

  prev_number = 1
  current_number = 2
  sum = 0
  while current_number <= number
    sum = sum + current_number if current_number.even?
    temp = current_number
    current_number = prev_number + current_number
    prev_number = temp
  end
  sum
end

number = 10
p sum_even_fibonacci(number)