def fine(d1,m1, y1, d2, m2, y2)
  total_fine = 0
  if y1 > y2
    if y1-y2 > 1
      total_fine = 10000
    else
      total_fine = 1000 * (y1-y2)
    end
  elsif m1 > m2
    if m1-m2 == 1
      if d1 < d2
        total_fine = 15 * (30 - d2 + d1)
      elsif d1 > d2
        total_fine = 15 * (30 - d2 + d1)
      elsif d1 == d2
        total_fine = 15
      end
    else
      total_fine = 500 * (m1 - m2)
    end
  elsif m1 == m2
    if d1 > d2
      total_fine = 15 * (d1 - d2)
    end
  end
  total_fine
end

p fine(3,12, 2017, 6, 12, 2017)