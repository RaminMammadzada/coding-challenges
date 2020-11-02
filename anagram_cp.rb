def anagram(s)
    return -1 if s.length.odd?

    subs1 = s[0...s.length/2]
    p subs1
    subs2 = s[s.length/2..-1]
    p subs2

    subs1.split(//).each_with_index do |char_s1, index_s1|
      p char_s1
      subs2.split(//).each_with_index do |char_s2, index_s2|
        p char_s2
      end
    end

end

anagram("xyyx")

anagram("fdhlvosfpafhalll")