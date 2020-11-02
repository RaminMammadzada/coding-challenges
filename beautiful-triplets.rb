def beautifulTriplets(d, arr)
  new_arr = []
  arr.each_with_index do |num1, index1|
    arr.each_with_index do |num2, index2|
      if index2 > index1
        if ( num1 + d == num2 )
          arr.each_with_index do |num3, index3|
            if index3 > index2
              if ( num2 + d == num3)
                new_arr.push([num1, num2, num3])
              end
            end
          end
        end
      end
    end
  end
  new_arr.count
end



def beautifulTriplets1(d, arr)
  counter = 0
  arr.length.times do |index|
    if (arr.include? arr[index] + d) && (arr.include? arr[index] + 2*d)
      counter += 1
    end
  end
  counter
end

p beautifulTriplets1(3, [1, 2, 4, 5, 7, 8, 10])