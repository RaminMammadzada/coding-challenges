def sqrt(number)
  sqrt_recursive(number, 0, number)
end
def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  if ((max_interval+min_interval)/2)**2 == number
    return (max_interval+min_interval)/2
  elsif ((max_interval + min_interval)/2)**2 > number
    max_interval = (max_interval + min_interval) / 2
    sqrt_recursive(number, min_interval, max_interval)
  else
    min_interval = (max_interval + min_interval)/2
    sqrt_recursive(number, min_interval, max_interval)
  end
end
puts sqrt(25)
puts sqrt(7056)