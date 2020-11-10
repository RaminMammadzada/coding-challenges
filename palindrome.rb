def doit(s)

  return "NO" if s.count.even?

  s_copy = s
  seenArray = []
  s.each do |char|
    if s.count(char).even? && !seenArray.contains?(char)
      s_copy.pop(char)

      seen =  true
    else

    end

  end

end

doit("aaabbbb")