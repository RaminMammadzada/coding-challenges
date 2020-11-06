#!/bin/ruby

require 'json'
require 'stringio'

# Complete the howManyGames function below.
def howManyGames(p, d, m, s)
  # Return the number of games you can buy
  return 0 if s == 0 && s < p
  total_spent = 0
  counter = 0
  while total_spent <= s

    if p > m
      total_spent += p
      p = p - d
      counter += 1 if total_spent <= s
    elsif p <= m
      total_spent += m
      counter += 1 if total_spent <= s
    end
  end
  counter
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

pdms = gets.rstrip.split

p = pdms[0].to_i

d = pdms[1].to_i

m = pdms[2].to_i

s = pdms[3].to_i

answer = howManyGames p, d, m, s

fptr.write answer
fptr.write "\n"

fptr.close()
