#!/bin/ruby

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeatedString(s, n)
  char_array = s.split('')
  count_of_a_in_string = 0
  char_array.each do |letter|
    if letter == "a"
      count_of_a_in_string += 1
    end
  end

  factor = n/s.length()
  reminder = n % s.length()
  count_of_a_in_final_string = factor * count_of_a_in_string

  reminder.times do |index|
    count_of_a_in_final_string += 1 unless s[index] != "a"
  end
  count_of_a_in_final_string
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

n = gets.to_i

result = repeatedString s, n

fptr.write result
fptr.write "\n"

fptr.close()
