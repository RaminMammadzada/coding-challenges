
def palindrome?(s)
  return -1 if s == s.reverse

  s.length.times do |i|
    new_string = s.sub(s[i], '')
    puts new_string
    return i if new_string == new_string.reverse
  end
end

p palindrome?("aaab")


return -1 if s.reverse == s

s.length.times do |elem|
  new_string = s[0..elem] + s[elem..-1]
  return index if new_string.reverse == new_string
end

return -1