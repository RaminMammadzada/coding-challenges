def divisibleSumPairs(k, ar)
  counter = 0
  ar.each_with_index do |elem1, index1|
    ar.each_with_index do |elem2, index2 |
      if index2 < index1
        if (elem1 + elem2) % k == 0
          p "value1: #{elem1}"
          p "value2: #{elem2}"
          p "- - - -}"
          counter += 1
        end
      end
    end
  end
  p counter
end


# divisibleSumPairs(5, [42,5,1,6,4,5,2,3,4,5,3])
divisibleSumPairs(3, [1, 3, 2, 6, 1, 2])
