def findDigits(n)

  p n
  chars =  n.to_s
  counter = 0
  chars.each_char do |char|
    next if char.to_i == 0
    counter += 1 if n % char.to_i == 0
  end
  counter
end

findDigits(1021)