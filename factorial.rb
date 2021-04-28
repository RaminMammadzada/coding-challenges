def factorial(n)
  (1..n).inject { |product, n| product * n}
end

# puts factorial(5)

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

@cache = [0,1]

def fib(n)
  return @cache[n] if @cache[n]

  @cache[n] = fib(n-1) + fib(n-2)
end

def testMemoization(n)
  memo = []

  (0..n).each do |i|
    memo[i] = i < 2 ? i : memo[i-1] + memo[i-2]
  end
  memo
end

p testMemoization(6)