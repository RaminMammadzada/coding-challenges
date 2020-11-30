def solve(n, k, arr)

  special_problems_counter  = 0

  page_no = 1

  (n).times do |chapter_no|
    p "= = = = = "
    p "Chapter no:#{chapter_no}"
    p "= = = = = "
    current_total_problems = arr[chapter_no]
    p "Current total problems: #{current_total_problems}"
    (current_total_problems + 1).times do |problem_no|
      next if problem_no == 0
      p "--problem no:#{problem_no}"
      if problem_no % k != 0 || page_no == problem_no
        if page_no == problem_no
          special_problems_counter += 1
          p "++Counter:#{special_problems_counter}"
        end
      elsif page_no+1 != current_total_problems
        page_no += 1
        p page_no
        p current_total_problems
        p ">Current page no: #{page_no}"

      end


    end
    page_no += 1
    p "Current page no: #{page_no}"

    p "= = = = = "
  end

  if page_no == arr[-1]
    special_problems_counter += 1
  end

  special_problems_counter
end

# p solve(5, 3, [4, 2, 6, 1, 10])
p solve(10, 5, [3, 8, 15, 11, 14, 1, 9, 2, 24, 31])