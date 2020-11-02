def anagram(s)
    return -1 if s.length.odd?

    subs1 = s[0...s.length/2]
     p subs1
    subs2 = s[s.length/2..-1]
    p subs2
    counter1 = 0
    subs1.each_char do |char|
        p char
        p subs2
         counter1 += 1 if !Array(subs2).any?(char)
         p counter1
         p "- - - "
    end

    counter2 = 0
    subs2.each_char do |char|
         counter2 += 1 if !Array(subs1).any?(char)
    end

    counter2 > counter1 ? counter2 : counter1

end

p anagram("xyyx")