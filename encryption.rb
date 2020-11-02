def encr(st)
  without_blank = st.delete ' '
  p without_blank
  len = without_blank.length
  sqr_len = Math.sqrt(len)

  sqr_len.floor


  column = sqr_len.ceil
  row = sqr_len.floor
  addition = 0
  (0..row).each do |num1|
    (0..column).each do |num2|
      print without_blank[num1+num2+addition]
    end
    p '' if num1 != row
    addition += column-1
  end


end

encr("have a nice day")


